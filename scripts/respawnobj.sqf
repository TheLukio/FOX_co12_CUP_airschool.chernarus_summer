/*
Respawn object take object variable from call
[this] execVM "scripts\respawnobj.sqf";
*/
if !isServer exitWith {};
sleep 1;
params ["_veh"];
    _veh addEventHandler ["HandleDamage", {
		params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_instigator", "_hitPoint"];  
		_unit setdamage 1;
		_objloc = getposATL _unit;   
		_objdir = getDir _unit;   
		_objtype = typeof _unit;  
		format ["Target %1 looking towards %3 degrees was destroyed at %2.", _objtype,_objloc,_objdir] remoteExec ["hint", 0];  
		[_objloc,_objdir,_objtype] spawn  
		{   
			params ["_objloc","_objdir","_objtype"];
			sleep 5; 
			_oldveh = nearestObjects [_objloc, ["Land_drevtank_ruin"],10];
			deleteVehicle (_oldveh select 0);
			sleep 5;
			format ["Spawning %3 at %1 looking %objdir",_objloc,_objdir,_objtype] remoteExec ["hint", 0];  
			_newveh = createVehicle ["TargetFakeTank_Lockable_EP1", _objloc, [], 0, "CAN_COLLIDE"];   
			_newveh setDir _objdir;  
			[_newveh] execVM "scripts\respawnobj.sqf"; 
		};   
	}];