["SSS_requestCompleted",{
    params ["_entity","_requestData"];
    
    // Case sensitive!
    private _taxiCallsigns = [
        "Taxi 1 (23 Seats)",
        "Taxi 2 (7 Seats)",
		"Taxi 3 (4 Seats)"
    ];
    private _waitTime = 30;

    if (_entity getVariable "SSS_callsign" in _taxiCallsigns && {_requestData # 0 != "RTB"}) then {
        [{
            _this getVariable ["SSS_onTask",false]
        },{},_entity,_waitTime,{
            [_this,"RTB"] call SSS_support_fnc_requestTransportHelicopter
        }] call CBA_fnc_waitUntilAndExecute;
    };
}] call CBA_fnc_addEventHandler;
