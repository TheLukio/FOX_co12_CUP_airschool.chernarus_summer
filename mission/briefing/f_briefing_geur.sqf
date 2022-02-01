// F3 - Briefing
// Credits: Please see the F3 online manual http://www.ferstaberinde.com/f3/en/
// ====================================================================================

// FACTION: AAF
// <font color='#0080FF'><marker name='respawn_guerrila'>XXX</marker></font color>
// Green #72E500
// Orange #FF7F00
// Blue #0080FF

if (isNil "f_param_CasualtiesCap") then { f_param_CasualtiesCap = 100 };

// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration",["
<br/><font size='18' color='#FF7F00'>ADMINISTRATION</font>
<br/>The following text has been auto-generated from the mission modules and parameters.
<br/>
"] call f_fnc_fillAdministration]];

// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Mission",format["
<br/><font size='18' color='#FF7F00'>OBJECTIVES</font>
<br/>*** Insert the mission here. ***
<br/>
<br/>Ensure %1&#37; of your force is not KIA.
<br/>
<br/><font size='18' color='#FF7F00'>SPECIAL TASKS</font>
<br/>*** Insert instructions for specific units here. ***
<br/>
<br/><font size='18' color='#FF7F00'>FRIENDLY FORCES</font>
<br/>*** Insert information about friendly forces here.***
<br/>
<br/><font size='18' color='#FF7F00'>ENEMY FORCES</font>
<br/>*** Insert information about enemy forces here.***
<br/>
<br/><font size='18' color='#FF7F00'>CREDITS</font>
<br/>Created by <font color='#72E500'>?</font color>
<br/>
<br/>A custom-made mission for ArmA 3 and Zeus Community
<br/>http://zeus-community.net/
<br/>
",f_param_CasualtiesCap]]];