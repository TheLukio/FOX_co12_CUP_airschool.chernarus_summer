//Made by TTT Highhead
//1.0 - 06.03.2015
//from scratch
//1.1 - 22.11.2015
//added spawn if used compiled and private variables (by Spec)

private _scriptHandle = _this spawn {
    if(params [ ["_object",objNull,[objNull]] ]) then {
        private _delay = 5;
        
        _object setFuel 0;
        _object vehicleChat format ["Service initiated. Standby."];
        _object vehicleChat format ["Rearming of primary weapon systems."];
        sleep _delay;
        _object vehicleChat format ["Rearming of secondary weapon systems."];
        sleep _delay;
        _object vehicleChat format ["Rearming completed."];
        _object setVehicleAmmo 1;
        sleep _delay;
        _object vehicleChat "Repairing.";
        sleep _delay;
        _object setDamage 0;
        _object vehicleChat "Refueling.";
        sleep _delay;
        _object setFuel 1;
        sleep _delay;
        _object vehicleChat "Service completed!!";
    } else {
        ["Wrong Parameter: Expected object to perform a maintenance. Called manually?"];
    };
};
true