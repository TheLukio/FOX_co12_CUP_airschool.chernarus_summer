// F3 - Briefing - Credits: Please see the F3 online manual http://www.ferstaberinde.com/f3/en/
// <marker name='XXX'>XXX</marker>
// Green #FFBA26
// Orange #FF7F00
// Blue #00FFFF
// Foxhound Orange #FFBA26


if (isNil "f_param_CasualtiesCap") then { f_param_CasualtiesCap = 100 }; // Set CasCap if author did not.

// The code below creates the administration sub-section of notes.
_adm = player createDiaryRecord ["Diary", ["Administration",[] call f_fnc_fillAdministration]];

// Edit the if statement for different faction briefs.

if (side group player != CIVILIAN) then {
	// The code below creates the execution sub-section of notes.
	_exe = player createDiaryRecord ["Diary", ["Mission",format["
	<br/><font size='18' color='#FFBA26'>SITUATION</font>
	<br/>
	<br/>
	<br/>%1 <!--- Casualties Cap --->
	<br/><font size='18' color='#FFBA26'>MISSION</font>
	<br/>
	<br/>
	<br/><font size='18' color='#FFBA26'>SPECIAL TASKS</font>
	<br/
	<br/>
	<br/><font size='18' color='#FFBA26'>FRIENDLY FORCES</font>
	<br/
	<br/>
	<br/><font size='18' color='#FFBA26'>ENEMY FORCES</font>
	<br/>The following units are known to be operational in the AO:
	<br/>%2%3
	<br/>
	<br/><font size='18' color='#FFBA26'>CREDITS</font>
	<br/>Created by <font color='#FF0080'>Foxhound</font color>
	<br/>
	<br/>A custom-made mission for ArmA 3 and [FOX] Foxhound Regiment
	<br/>https://discord.gg/UTV7mkQh
	<br/>",
	if (f_param_CasualtiesCap > 0 && f_param_CasualtiesCap < 100) then { format["Ensure casualties are kept below %1 and %1&#37; of your force is not incapacitated.<br/>", f_param_CasualtiesCap] } else { "" },
	(((vehicles select { side _x getFriend side group player < 0.6 && !(_x isKindOf "staticWeapon" || _x isKindOf "static") && count crew _x > 0}) apply {  getText (configFile >> "CfgVehicles" >> typeOf _x >> "displayName") }) call BIS_fnc_consolidateArray) apply { format["%2x <font color='#00FFFF'>%1</font><br/>", _x#0, _x#1] } joinString "",
	format["%1x <font color='#00FFFF'>Infantry Groups</font><br/>", { side _x getFriend side group player < 0.6 && count units _x >= 3 && vehicle leader _x == leader _x} count allGroups]
	]]];
};