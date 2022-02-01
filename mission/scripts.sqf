// Silber Littlebird course
LB_markers = ["lz1_lb","lz2_lb","lz3_lb","lz4_lb","lz5_lb","lz6_lb","lz7_lb","lz8_lb","lz9_lb","lz10_lb"];
BH_markers = ["lz1_bh","lz2_bh","lz3_bh","lz4_bh","lz5_bh","lz6_bh","lz7_bh","lz8_bh","lz9_bh","lz10_bh"];
CH_markers = ["lz1_ch","lz2_ch","lz3_ch","lz4_ch","lz5_ch","lz6_ch","lz7_ch","lz8_ch","lz9_ch","lz10_ch"];
JTAC_markers = ["jtac_area","jtac_warning","mrkJTACbunker_2","mrkJTACbunker_1"];
ATGR_markers =  ["mrkATGRtargets","mrkATGR"];

basichelomarkers = [basich_1,basich_2,basich_3,basich_4,basich_5,basich_6,basich_7,basich_8,basich_9,basich_10,basich_11,basich_12,helo_basic_1,helo_basic_2,helo_basic_3,helo_basic_4,helo_basic_5,helo_basic_6];
silber_autor = false;
silber_noeaa = false;

{_x setMarkerAlpha 0} foreach LB_markers;
// Silber Blackhawk course
{_x setMarkerAlpha 0} foreach BH_markers;
// Silber Chinook course
{_x setMarkerAlpha 0} foreach CH_markers;
// Silber Hide Basic Helo
{_x hideObjectGlobal true} foreach basichelomarkers;
// Silber JTAC Area
{_x setmarkerAlpha 0} foreach JTAC_markers;
{_x setmarkerAlpha 0} foreach ATGR_markers;

// disable AutoHover
["disableAutohover",                        // unique name
"onEachFrame",                              // which kind of handler to attach
{                                           // the code follows here
_vehicle = vehicle player;
if(isAutoHoverOn _vehicle)
then
{
	player action ["autoHoverCancel", _vehicle];
}
}] call BIS_fnc_addStackedEventHandler; // arguments to pass to the code




_condition = {   
silber_autor && getNumber([_target, _target unitTurret player] call BIS_fnc_turretConfig >> 'isCopilot') > 0
};         
_statement = {
	[(vehicle player), ["hitMRotor", 1.0]] remoteExec ["setHitPointDamage", (vehicle player)];
};
_statement2 = {
	[(vehicle player), "HitVRotor", 1.0] remoteExec ["setHitPointDamage",(vehicle player)];
};
_statement3 = {
	[(vehicle player), "HitEngine", 1.0] remoteExec ["setHitPointDamage",(vehicle player)];
};
_statement4 = {
	_target setdamage 0;
};	
     
_action = ["FOXdamagemrotor","MROT failure","",_statement,_condition,{},[],[0,0,0],3,[false,true,false,false,false]] call ace_interact_menu_fnc_createAction;
["CUP_B_UH60M_Unarmed_US", 1, ["ACE_SelfActions"], _action,true] call ace_interact_menu_fnc_addActionToClass; 

_action2 = ["FOXdamagevrotor","ATRQ failure","",_statement2,_condition,{},[],[0,0,0],3,[false,true,false,false,false]] call ace_interact_menu_fnc_createAction;
["CUP_B_UH60M_Unarmed_US", 1, ["ACE_SelfActions"], _action2,true] call ace_interact_menu_fnc_addActionToClass; 

_action3 = ["FOXdamageengine","ENG failure","",_statement3,_condition,{},[],[0,0,0],3,[false,true,false,false,false]] call ace_interact_menu_fnc_createAction;
["CUP_B_UH60M_Unarmed_US", 1, ["ACE_SelfActions"], _action3,true] call ace_interact_menu_fnc_addActionToClass; 

_action4 = ["FOXdamageengine","REPAIR","",_statement4,_condition,{},[],[0,0,0],3,[false,true,false,false,false]] call ace_interact_menu_fnc_createAction;
["CUP_B_UH60M_Unarmed_US", 1, ["ACE_SelfActions"], _action4,true] call ace_interact_menu_fnc_addActionToClass;

// MISSION VARAIBLES
// ====================================================================================
// set viewdistance 
{setViewDistance 6000; setObjectViewDistance 6000} remoteExec ['BIS_fnc_spawn',0,'z_viewDist'];
player addRating 100000; // prevent accidental ff from creating issues
enableEngineArtillery true; 	// Enable/Disable Artillery Computer
//disableMapIndicators [ false, true, true, false]; // Disable map indicators for friendly/enemy allow for mines and ping 
//onMapSingleClick "_shift";	// Disable Map Clicking
f_var_AuthorUID = '76561197975697060'; // Allows GUID to access Admin/Zeus features in MP. // Example Taizan: 76561197975697060
//f_var_fogOverride = [[0,0,0],[0.1,0.005,100],[0.1,0.04,100],[0.1,random 0.02,100]]; // Override default fog settings [[none],[Light],[heavy],[rand]].
//f_var_hiddenGroups =[];
//[RESISTANCE,"acc_flashlight"] execVM "scripts\flashLight.sqf";			// AI Flashlights for SIDE

// ====================================================================================
// F3 - disable any callout from units
[player, "NoVoice"] remoteExec ["setSpeaker", -2, format["NoVoice_%1", netId player]]; // No player voice
showSubtitles false; // No radio calls
// ====================================================================================
// F3 - Casualty Cap - Sides: west | east | resistance - Format: [SIDE,ENDING,<PERCENT>]
//[nil, 2] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// ====================================================================================
// F3 - Map Click Teleport

// [1,600,true,[],3000] execVM "f\mapClickTeleport\f_mapClickTeleportAction.sqf";	// Set for HALO (3000m Height)
// [] execVM "f\mapClickTeleport\f_mapClickTeleportAction.sqf"; 					// Use Defaults (Land Teleport, Leaders Only)

// ====================================================================================
// Remove Enemy weapons on death
 if isServer then {
	addMissionEventHandler ["EntityKilled", {
		params ["_unit"];
		if (_unit isKindOf "CAManBase" && !(isPlayer _unit)) then {
				_unit removeWeapon (primaryWeapon _unit); 
				_unit removeWeapon (secondaryWeapon _unit);
		};
	}];
};
// ====================================================================================
// Post-process effects
if (hasInterface) then {
	_hdl = ppEffectCreate ["colorCorrections", 1501];
	_hdl ppEffectEnable true;			
		// Pick One:
		_hdl ppEffectAdjust [0.88, 0.88, 0, [0.2, 0.29, 0.4, -0.22], [1, 1, 1, 1.3], [0.15, 0.09, 0.09, 0.0]]; // Realistic Color theme
		// _hdl ppEffectAdjust [1.01, 1.18, -0.04, [1.0, 1.4, 0.8, -0.04], [0.55, 0.55, 0.72, 1.35],  [0.699, 1.787, 0.314, 20.03]];    // Mediterrainean
		//_hdl ppEffectAdjust [1, 0.4, 0, [0.8,0.9,1,-0.1], [1,1,1,1.66], [-0.5,0,-1,5]]; // Arma2 Tones
		//_hdl ppEffectAdjust[ 1, 1.3, 0.001, [-0.11, -0.65, -0.76, 0.015],[-5, -1.74, 0.09, 0.86],[-1.14, -0.73, 1.14, -0.09]]; // AFrican theme
		//_hdl ppEffectAdjust [.6, 1.0, 0.0, [0.84, 0.67, 0.44, 0.22], [0.81, 0.76, 0.64, 0.43], [0.81, 0.77, 0.62, 0.31]]; // light beige/desert
		//_hdl ppEffectAdjust [1,1,0,[0.1,0.2,0.3,-0.3],[1,1,1,0.5],[0.5,0.2,0,1]]; // Real Is Brown 2
		//_hdl ppEffectAdjust [0.88, 0.88, 0, [0.2, 0.29, 0.4, -0.22], [1, 1, 1, 1.3], [0.15, 0.09, 0.09, 0.0]]; // Post-Soviet
		//_hdl ppEffectAdjust [1, 1.1, 0.0, [0.0, 0.0, 0.0, 0.0], [1.0,0.7, 0.6, 0.60], [0.200, 0.600, 0.100, 0.0]]; // Nightstalkers
		//_hdl ppEffectAdjust [1.0, 1.0, 0.0,[1.0, 1.0, 1.0, 0.0],[1.0, 1.0, 0.9, 0.35],[0.3,0.3,0.3,-0.1]]; // Gray Tone
		//_hdl ppEffectAdjust [1.0, 1.0, 0.0,[0.2, 0.2, 1.0, 0.0],[0.4, 0.75, 1.0, 0.60],[0.5,0.3,1.0,-0.1]]; // Cold Tone
		//_hdl ppEffectAdjust [1, 1, 0, [0.31, 0.31, 1.0, 0.1], [0.85, 0.85, 0.92, 0.48], [1 , 1, 1, 0.03]]; // Winter White
		//_hdl ppEffectAdjust [0.9, 1, 0, [0.1, 0.1, 0.1, -0.1], [1, 1, 0.8, 0.528],  [1, 0.2, 0, 0]]; // Takistan
	_hdl ppEffectCommit 0;
};