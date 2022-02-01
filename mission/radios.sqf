// F3 - TFR/ACRE Settings
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// SKIP Radio settings if no TFAR is loaded
if !(isClass(configFile/"CfgPatches"/"task_force_radio")) exitWith {
    ["radios.sqf",format["TFAR NOT FOUND: %1",task_force_radio],"DEBUG"] call f_fnc_logIssue;
};

// SHARED SETTINGS (ACRE / TFAR / VANILLA)
// Should any radios should be assigned at all, to anyone?
f_radios_settings_disableAllRadios = false;

// Unit types you want to give a long-range
// e.g: ["co","dc","pp","pc","pcc","vc","vd","vg"] would give the CO, FTLs and all medics long-range
f_radios_settings_longRangeUnits = ["co","cm","dc","vc","pp","sn","recftl"]; // ["co","ftl","vc","pp"];

// Set the list of units that get a personal/short-range radio e.g. "co","dc","ftl","p"
// Undefined will assign to ALL by default, below gives any leader a PR
f_radios_settings_personalRadio = ["co","cm","dc","ftl","vc","pp","recftl"];

// Set the list of units that get a rifleman's/basic radio
// Undefined will assign to all by default or leave empty array for no radios.
//f_radios_settings_riflemanRadio = [];

// Set custom LR Nets if required (LR otherwise determined by 'groups.sqf').
f_radios_settings_longRangeGroups = ["Command","Alpha","Bravo","Charlie","Armor 1","Armor 2", "Air","Combined"];
// "NEUTRAL" is shared in ACRE.


if (f_param_radios == 1 && !isNil "CBA_settings_fnc_set") then {

};

// ====================================================================================
// TFAR SPECFIC
// ====================================================================================
// Override the default TFAR LR Radio Class names
TFAR_defaultRadio_Backpack_West = "TFAR_mr3000_multicam";
TFAR_defaultRadio_Backpack_East = "TFAR_mr3000";
TFAR_defaultRadio_Backpack_Independent = "TFAR_anprc155";

/* Other Backpack Radios
    TFAR_anprc155_coyote
    TFAR_rt1523g_big
    TFAR_rt1523g_big_bwmod
    TFAR_rt1523g_big_bwmod_tropen
    TFAR_rt1523g_big_rhs
    TFAR_mr3000_rhs    
    TFAR_rt1523g_black
    TFAR_rt1523g_fabric
    TFAR_rt1523g_green
    TFAR_rt1523g_sage
    TFAR_rt1523g_big_bwmod
    TFAR_rt1523g_big_bwmod_tropen
    TFAR_rt1523g_bwmod (long range small)
 
    // Assault pack sized radios
    TFAR_bussole
    TFAR_rt1523g

*/

// DO NOT EDIT
tf_freq_west =    [0 ,7, TFAR_defaultFrequencies_sr_west,0, tfar_radiocode_west, -1, 0, getPlayerUID player, false];
tf_freq_west_lr = [0 ,7, TFAR_defaultFrequencies_lr_west,0, tfar_radiocode_west, -1, 0,false];
tf_freq_east  =   [0 ,7, TFAR_defaultFrequencies_sr_east,0, tfar_radiocode_east, -1, 0, getPlayerUID player, false];
tf_freq_east_lr = [0 ,7, TFAR_defaultFrequencies_lr_east,0, tfar_radiocode_east, -1, 0,false];
tf_freq_guer  =   [0 ,7, TFAR_defaultFrequencies_sr_independent,0, tfar_radiocode_independent, -1, 0, getPlayerUID player, false];
tf_freq_guer_lr = [0 ,7, TFAR_defaultFrequencies_lr_independent,0, tfar_radiocode_independent, -1, 0,false];