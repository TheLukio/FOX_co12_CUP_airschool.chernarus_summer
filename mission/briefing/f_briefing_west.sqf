// F3 - Briefing
// Credits: Please see the F3 online manual http://www.ferstaberinde.com/f3/en/
// ====================================================================================

// FACTION: WEST
// <font color='#0080FF'><marker name='respawn_west'>XXX</marker></font color>
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
<br/>Welcome to rotary and fixed-wing training mission. As instructor you can enable or disable various features from a GUI, players logged in as Recon elements can play the role of a JTAC.
<br/>
<br/><font size='18' color='#FF7F00'>SPECIAL TASKS</font>
<br/>Go through basic rotary wing training and then enable the verious courses.
<br/>
<br/><font size='18' color='#FF7F00'>FRIENDLY FORCES</font>
<br/>
<br/>
<br/><font size='18' color='#FF7F00'>ENEMY FORCES</font>
<br/> None.
<br/>
<br/><font size='18' color='#FF7F00'>CREDITS</font>
<br/>Created by <font color='#72E500'>Taizan</font color>
<br/>
<br/>A custom-made mission for ArmA 3 and Foxhound Regimined Community
<br/>
",f_param_CasualtiesCap]]];