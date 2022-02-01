params ["_triggerWho"];
while {true} do {
//_loc = getPos _triggerWho;
//hint format ["blah %1 - %2",_triggerWho,_triggerlist];
//hint format["%1 is this trigger",_triggerWho,];
playSound3D ["A3\sounds_f\air\heli_attack_02\alarm.wss", _triggerWho, false, getposATL _triggerwho,10,1,20];
//hint format("%1 is flying over 30m! At position: %2.",_triggerWho,_triggerlist);
//playSound3D ["A3\sounds_f\air\heli_attack_02\alarm.wss", _triggerwho, true, _loc, 9, 1.1, 40];
//playSound3D ["A3\sounds_f\air\heli_attack_02\alarm.wss", _triggerWho, false, getPos _triggerWho, 10, 1, 50];
sleep 0.5125;
};