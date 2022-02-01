// F3 - Folk ARPS Assign Gear Script - NATO
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ================================
// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES
// ATTACHMENTS - PRIMARY
_attach1 = ["acc_pointer_IR","acc_flashlight"];
_attach2 = "";

_flashHider = "";
_silencer1 = ["rhsusf_acc_nt4_black","rhsusf_acc_nt4_tan"]; // Rifleman
_silencer2 = ["muzzle_snds_b","muzzle_snds_b_snd_f"]; // MG
_scope1 = ["rhsusf_acc_acog","rhsusf_acc_acog2","rhsusf_acc_acog3"]; // CQB
_scope2 = ["rhsusf_acc_acog_rmr"]; // Low
_scope3 = ["optic_ams","optic_AMS_snd","optic_ams_khk"]; // Medium
_scope4 = ["optic_LRPS","optic_LRPS_tna_F"]; // High

_bipod1 = ["bipod_01_F_blk","bipod_01_F_snd"];

// Default setup
_attachments = [_flashHider,_attach1,_scope1,_bipod1]; // The default attachment set for most units, overwritten in the individual unitType

// Predefined Class Attachment Setup
_attach_co = [_attach1,_scope2,_bipod1];
_attach_dc = [_attach1,_scope2]; // Also SL!
_attach_fl = [_attach1,_scope2];
_attach_mg = [_attach1,"cup_optic_acog_ta648_308_rds_black","rhsusf_acc_saw_bipod"];
_attach_dm = [_scope3,_bipod1];
_attach_sn = [_scope4,_bipod1,_silencer2];

// [] = remove all
// [_attach1,_scope1,_silencer] = remove all, add items assigned in _attach1, _scope1 and _silencer1
// [_scope2] = add _scope2, remove rest

// ================================

// ATTACHMENTS - HANDGUN
_hg_silencer1 = "";
_hg_scope1 = "";

// Default setup
_hg_attachments= []; // The default attachment set for handguns, overwritten in the individual unitType

// ================================

// WEAPON SELECTION

// Basic magazine counts given to most infantry, MMG etc get _defMags_tr as default count.
_defMags = 3;
_defMags_tr = 4;

// Standard Riflemen ( MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, MTR Assistant Gunner, Rifleman)
_rifle = ["rhs_weap_m4"];
_riflemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_riflemag_tr = "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";

// Standard Carabineer (Medic, Rifleman (AT), MAT Gunner, MTR Gunner, Carabineer)
_carbine = ["rhs_weap_m4_mstock"];
_carbinemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_carbinemag_tr = "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";

// Standard Submachine Gun/Personal Defence Weapon (Aircraft Pilot, Submachinegunner)
_smg = "CUP_smg_MP5A5";
_smgmag = "CUP_30Rnd_9x19_MP5";
_smgmag_tr = "CUP_30Rnd_Red_Tracer_9x19_MP5";

// Diver
_diverWep = ["rhs_weap_m4_mstock"];
_diverMag1 = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_diverMag2 = "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";

// Rifle with GL and HE grenades (CO, DC, FTLs)
_glrifle = ["rhs_weap_m4_m320"];
_glriflemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_glriflemag_tr = "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Smoke for FTLs, Squad Leaders, etc
_glsmoke = "1Rnd_Smoke_Grenade_shell";
_glsmokealt1 = "1Rnd_SmokeRed_Grenade_shell";
_glsmokealt2 = "1Rnd_SmokeBlue_Grenade_shell";

// Flares for FTLs, Squad Leaders, etc
_glflare = "ACE_40mm_Flare_white";
_glflarealt = "ACE_40mm_Flare_red";

// Pistols (CO, DC, Automatic Rifleman, Medium MG Gunner)
_pistol = "rhsusf_weap_m9";
_pistolmag = "rhsusf_mag_15Rnd_9x19_FMJ";

// Grenades
_grenade = "HandGrenade";
_grenadealt = "MiniGrenade";
_smokegrenade = "SmokeShell";
_smokegrenadealt = "SmokeShellBlue";
_irgrenade = "B_IR_Grenade";

// misc medical items.
_firstaid = "FirstAidKit";
_medkit = "Medikit";

// Binoculars
_binos1 = "Binocular";
_binos2 = "Rangefinder";

// Night Vision Goggles (NVGoggles)
_nvg = "rhsusf_ANPVS_15";

// UAV Terminal
_uavterminal = "B_UavTerminal";	  // BLUFOR - FIA

// Chemlights
_chem =  "Chemlight_blue";
_chemalt = "Chemlight_red";

// Backpacks
_bagsmall = "B_AssaultPack_rgr";			// carries 120, weighs 20
_bagmedium = "B_Kitbag_rgr";				// carries 240, weighs 30
_baglarge =  "B_Carryall_green_F"; 			// carries 320, weighs 40
_bagmediumdiver =  "B_AssaultPack_blk";		// used by divers
_baguav = "B_UAV_01_backpack_F";			// used by UAV operator
_baghmgg = "B_HMG_01_weapon_F";				// used by Heavy MG gunner
_baghmgag = "B_HMG_01_support_F";			// used by Heavy MG assistant gunner
_baghatg = "B_AT_01_weapon_F";				// used by Heavy AT gunner
_baghatag = "B_HMG_01_support_F";			// used by Heavy AT assistant gunner
_bagmtrg = "B_Mortar_01_weapon_F";			// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";		// used by Mortar assistant gunner
_baghsamg = "B_AA_01_weapon_F";				// used by Heavy SAM gunner
_baghsamag = "B_HMG_01_support_F";			// used by Heavy SAM assistant gunner

// ================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

// Automatic Rifleman
_AR = ["rhs_weap_m249_pip","rhs_weap_m249_pip_L"];
_ARmag = "rhsusf_200Rnd_556x45_box";
_ARmag_tr = "rhsusf_200rnd_556x45_mixed_box";

// Medium MG
_MMG = ["CUP_lmg_M60E4","MMG_02_sand_F","CUP_lmg_M60E4_wood "];
_MMGmag = "150Rnd_762x51_Box";
_MMGmag_tr = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";

// Marksman rifle
_DMrifle = ["rhs_weap_m14_rail_wd","rhs_weap_m14_rail_fiberglass"];
_DMriflemag = "rhsusf_20Rnd_762x51_m80_Mag";

// Rifleman AT
_RAT = ["rhs_weap_M136"];
// RHS one shot
//_RATmag = ""; 
//_RATmag2 = "";

// Medium AT
_MAT = ["launch_MRAWS_green_rail_F","launch_MRAWS_olive_rail_F"];
_MATmag1 = "MRAWS_HEAT_F";
_MATmag2 = "MRAWS_HE_F";

// Surface Air
_SAM = "rhs_weap_fim92";
_SAMmag = "rhs_fim92_mag";

// Heavy AT
_HAT = "rhs_weap_fgm148";
_HATmag1 = "rhs_fgm148_magazine_AT";
_HATmag2 = "Titan_AA";

// Sniper
_SNrifle = ["rhs_weap_XM2010","rhs_weap_XM2010_sa","rhs_weap_XM2010_d"];
_SNrifleMag = "rhsusf_5Rnd_300winmag_xm2010";

// Engineer items
_ATmine = "ATMine_Range_Mag";
_satchel = "DemoCharge_Remote_Mag";
_APmine1 = "APERSBoundingMine_Range_Mag";
_APmine2 = "APERSMine_Range_Mag";

// ================================

// FACE, CLOTHES AND UNIFORMS

// Define classes. This defines which gear class gets which uniform
// "medium" vests are used for all classes if they are not assigned a specific uniform

_light = ["dm","r","aar","rat"];
_heavy =  ["eng","engm","ar"];
_diver = ["div"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = ["recftl","recuav","recm","receng","rec","recdm"];
_leaders = ["co","dc","sl","ftl","recftl"];

// Basic clothing
// The outfit-piece is randomly selected from the array for each unit
_baseUniform = ["CUP_U_B_USArmy_ACU_OCP","CUP_U_B_USArmy_ACU_Rolled_Gloves_OCP","CUP_U_B_USArmy_ACU_Rolled_OCP"];
_baseHelmet = ["rhsusf_ach_helmet_ocp_alt","rhsusf_ach_helmet_headset_ocp_alt","rhsusf_ach_helmet_camo_ocp","rhsusf_ach_helmet_ocp_norotos"];
_baseGlasses = ["rhs_googles_yellow","rhs_googles_orange","rhs_googles_clear"];

// Vests
_lightRig = ["rhsusf_iotv_ocp_Rifleman"];
_mediumRig = ["rhsusf_iotv_ocp_Teamleader"]; 	// default for all infantry classes
_heavyRig = ["rhsusf_iotv_ocp_SAW"];


// Diver
_diverUniform =  ["U_B_Wetsuit"];
_diverHelmet = ["H_Booniehat_mcamo"];
_diverRig = ["V_RebreatherB"];
_diverGlasses = ["G_Diving"];

// Pilot
_pilotUniform = ["U_B_HeliPilotCoveralls"];
_pilotHelmet = ["CUP_H_SPH4","CUP_H_SPH4_khaki","CUP_H_SPH4_green"];
_pilotRig = ["Aircrew_vest_2_NH"];
_pilotGlasses = ["G_Aviator"];

// Crewman
_crewUniform = ["rhs_uniform_cu_ocp_1stcav"];
_crewHelmet = ["rhsusf_cvc_green_ess","rhsusf_cvc_green_alt_helmet","rhsusf_cvc_green_helmet"];	
_crewRig = ["V_TacVest_blk"];
_crewGlasses = ["G_Combat","G_Combat_Goggles_tna_F"];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"]; //DLC alternatives: ["U_B_FullGhillie_lsh","U_B_FullGhillie_ard","U_B_FullGhillie_sard"];
_ghillieHelmet = ["H_Booniehat_mcamo"];
_ghillieRig = ["V_TacVest_oli"];
_ghillieGlasses = ["G_Bandanna_shades"];

// Spec Op
_sfUniform = ["rhs_uniform_cu_ocp","rhs_uniform_g3_mc"];
//_sfhelmet = ["H_Booniehat_khk_hs","H_Cap_oli_hs","H_Watchcap_khk","H_Watchcap_camo","H_Shemag_olive_hs"]; // Soft helmets
_sfhelmet = ["rhsusf_ach_bare_wood_headset","rhsusf_ach_bare_semi_headset","rhsusf_ach_bare_des_headset"], // add to inventory
_sfRig = ["rhsusf_spcs_ocp_sniper"];
_sfGlasses = ["rhsusf_shemagh_gogg_od","rhsusf_shemagh_gogg_grn","rhsusf_shemagh_gogg_tan"];

// ================================

// This block needs only to be run on an infantry unit
if (_isMan) then {
	// PREPARE UNIT FOR GEAR ADDITION
	// The following code removes all existing weapons, items, magazines and backpacks
	removeBackpack _unit;
	removeAllWeapons _unit;
	removeAllItemsWithMagazines _unit;
	removeAllAssignedItems _unit;

	// HANDLE CLOTHES
	// Handle clothes and helmets and such using the include file called next.
	#include "..\..\f\assignGear\f_assignGear_clothes.sqf";

	// ADD UNIVERSAL ITEMS
	// Add items universal to all units of this faction

	_unit linkItem _nvg;			// Add and equip the faction's nvg
	_unit linkItem "ItemMap";		// Add and equip the map
	_unit linkItem "ItemCompass";	// Add and equip a compass
	_unit linkItem "ItemRadio";		// Add and equip A3's default radio
	_unit linkItem "ItemWatch";		// Add and equip a watch
	_unit linkItem "ItemGPS"; 		// Add and equip a GPS
	_unit addItem "ItemcTabHCam";
	_unit addItem "ItemAndroid"; // CTAB Android device
	_unit addMagazines [_smokegrenade,2];
	_unit addMagazines [_chem,1];
	_unit addItem _firstaid;		// Add a single first aid kit (FAK)
	
};

// SETUP BACKPACKS
// Include the correct backpack file for the faction

_backpack = {
	_typeOfBackPack = _this select 0;
	_loadout = f_param_backpacks;
	if (count _this > 1) then {_loadout = _this select 1};
	switch (_typeOfBackPack) do
	{
		#include "f_backpack.sqf";
	};
};

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeOfUnit) do
{

	// LOADOUT: COMMANDER
	case "co":
	{
		["r"] call _backpack;
		_unit setUnitTrait ["engineer",1];
		_unit addMagazines [_smokegrenade,2];
		_unit addMagazines [_smokegrenadealt,2];
		_unit addMagazines [_chem,1];		
		_unit addMagazines [_riflemag,_defMags];
		_unit addMagazines [_riflemag_tr,_defMags_tr];
		[_unit, _rifle] call f_fnc_addWeapon;
		_unit addMagazines [_grenade,2];
		[_unit, _binos2] call f_fnc_addWeapon;
		_unit linkItem _uavterminal;
		_unit removeItem "ItemAndroid"; // get rid of android
		_unit addItem "ItemcTab";
		_unit addItem "ALIVE_Tablet";
		_unit addWeapon "Laserdesignator";
		_unit addMagazines ["Laserbatteries",1];	// Batteries added for the F3 UAV Recharging component				
		_attachments = _attach_co;
		_unit addMagazines [_pistolmag,2];
		[_unit, _pistol] call f_fnc_addWeapon;		
		_unit addHeadgear "H_MilCap_mcamo";
	};

	// LOADOUT: COMMAND MEDIC
	case "cm":
	{
		["m"] call _backpack;
		_unit setUnitTrait ["medic",1];
		_unit addMagazines [_smokegrenadealt,2];
		_unit addMagazines [_riflemag,_defMags];
		_unit addMagazines [_riflemag_tr,_defMags_tr];
		[_unit, _rifle] call f_fnc_addWeapon;
		_unit addMagazines [_grenade,2];
		[_unit, _binos2] call f_fnc_addWeapon;
		_unit linkItem _uavterminal;
		_unit removeItem "ItemAndroid"; // get rid of android
		_unit addItem "ItemcTab";
		_unit addItem "ALIVE_Tablet";
		_unit addWeapon "Laserdesignator";
		_unit addMagazines ["Laserbatteries",1];	// Batteries added for the F3 UAV Recharging component				
		_attachments = _attach_co;
		_unit addMagazines [_pistolmag,2];
		[_unit, _pistol] call f_fnc_addWeapon;		
		_unit addHeadgear "H_MilCap_mcamo";
	};
	// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
	case "dc":
	{
		["g"] call _backpack;
		_unit addMagazines [_smokegrenadealt,2];
		_unit addMagazines [_glriflemag,_defMags];
		_unit addMagazines [_glriflemag_tr,_defMags_tr];
		_unit addMagazines [_glmag,4];
		_unit addMagazines [_glsmokealt1,2];
		[_unit, _glrifle] call f_fnc_addWeapon;
		_unit addMagazines [_grenade,2];
		_unit removeItem "ItemAndroid"; // get rid of android
		_unit addItem "ItemcTab";
		_unit addItem "ALIVE_Tablet";
		_unit addWeapon "Laserdesignator";
		_unit addMagazines ["Laserbatteries",1];	// Batteries added for the F3 UAV Recharging component		
		_unit addMagazines [_pistolmag,2];
		[_unit, _pistol] call f_fnc_addWeapon;		
		_attachments = _attach_dc;
	};

	// LOADOUT: MEDIC
	case "m":
	{
		[_typeOfUnit] call _backpack;
		_unit setUnitTrait ["medic",1];
		_unit addMagazines [_smokegrenade,6];
		_unit addMagazines [_smokegrenadealt,2];
		_unit addMagazines [_carbinemag,_defMags];
		_unit addMagazines [_carbinemag_tr,_defMags_tr];
		[_unit, _carbine] call f_fnc_addWeapon;
		[_unit, _binos2] call f_fnc_addWeapon;
		{_unit addItem _firstaid} forEach [1,2,3,4];
	};

	// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
		["g"] call _backpack;
		_unit addMagazines [_smokegrenade,2];
		_unit addMagazines [_smokegrenadealt,2];
		_unit addMagazines [_glriflemag,_defMags];
		_unit addMagazines [_glriflemag_tr,_defMags_tr];
		_unit addMagazines [_glmag,6];
		_unit addMagazines [_glsmokealt1,2];
		[_unit, _glrifle] call f_fnc_addWeapon;
		_unit addMagazines [_grenade,2];
		[_unit, _binos2] call f_fnc_addWeapon;
		_unit addMagazines [_pistolmag,2];
		[_unit, _pistol] call f_fnc_addWeapon;
		_unit linkItem "ItemGPS";
		_unit addItem "ALIVE_Tablet";
		_attachments = _attach_fl;
		[_unit, _binos2] call f_fnc_addWeapon;		
	};


	// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
		[_typeOfUnit] call _backpack;
		_unit addMagazines [_ARmag,_defMags_tr];
		_unit addMagazines [_ARmag_tr,1];
		[_unit, _AR] call f_fnc_addWeapon;
		_unit addMagazines [_grenade,2];
		_unit addMagazines [_pistolmag,2];
		[_unit, _pistol] call f_fnc_addWeapon;
		_attachments = _attach_mg;
		[_unit, _binos2] call f_fnc_addWeapon;
	};

	// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{
		[_typeOfUnit] call _backpack;

		_unit addMagazines [_riflemag,_defMags];
		_unit addMagazines [_riflemag_tr,_defMags_tr];
		[_unit, _rifle] call f_fnc_addWeapon;
		_unit addMagazines [_grenade,2];
		[_unit, _binos2] call f_fnc_addWeapon;
	};

	// LOADOUT: RIFLEMAN (AT)
	case "rat":
	{
		[_typeOfUnit] call _backpack;
		_unit addMagazines [_carbinemag,_defMags];
		_unit addMagazines [_carbinemag_tr,_defMags_tr];
		[_unit, _carbine] call f_fnc_addWeapon;
		_unit addMagazines [_grenade,2];
		[_unit, _RAT] call f_fnc_addWeapon;
		[_unit, _binos2] call f_fnc_addWeapon;
	};

	// LOADOUT: DESIGNATED MARKSMAN
	case "dm":
	{
		_unit addMagazines [_DMriflemag,_defMags];
		[_unit, _DMrifle] call f_fnc_addWeapon;
		_unit addMagazines [_grenade,4];
		_unit addMagazines [_pistolmag,4];
		[_unit, _pistol] call f_fnc_addWeapon;
		_attachments = _attach_dm;
		[_unit, _binos2] call f_fnc_addWeapon;
	};

	// LOADOUT: MEDIUM MG GUNNER
	case "mmgg":
	{
		[_typeOfUnit] call _backpack;
		_unit addMagazines [_MMGmag,_defMags_tr];
		_unit addMagazines [_MMGmag_tr,1];
		[_unit, _MMG] call f_fnc_addWeapon;
		_unit addMagazines [_pistolmag,3];
		[_unit, _pistol] call f_fnc_addWeapon;
		_attachments = _attach_mg;
		[_unit, _binos2] call f_fnc_addWeapon;
	};

	// LOADOUT: MEDIUM MG ASSISTANT GUNNER
	case "mmgag":
	{
		[_typeOfUnit] call _backpack;
		_unit addMagazines [_riflemag,_defMags];
		_unit addMagazines [_riflemag_tr,2];
		[_unit, _rifle] call f_fnc_addWeapon;
		_unit addMagazines [_grenade,2];
		[_unit, _binos2] call f_fnc_addWeapon;
	};

	// LOADOUT: HEAVY MG GUNNER
	case "hmgg":
	{
		[_typeOfUnit] call _backpack;
		_unit addMagazines [_carbinemag,_defMags];
		_unit addMagazines [_carbinemag_tr,_defMags_tr];
		[_unit, _carbine] call f_fnc_addWeapon;
		_unit addMagazines [_grenade,2];
		[_unit, _binos2] call f_fnc_addWeapon;
	};

	// LOADOUT: HEAVY MG ASSISTANT GUNNER
	case "hmgag":
	{
		[_typeOfUnit] call _backpack;
		_unit addMagazines [_carbinemag,_defMags];
		_unit addMagazines [_carbinemag_tr,_defMags_tr];
		[_unit, _carbine] call f_fnc_addWeapon;
		[_unit, _binos1] call f_fnc_addWeapon;
		_unit addMagazines [_grenade,2];
		[_unit, _binos2] call f_fnc_addWeapon;
	};

	// LOADOUT: MEDIUM AT GUNNER
	case "matg":
	{
		[_typeOfUnit] call _backpack;
		_unit addMagazines [_carbinemag,_defMags];
		_unit addMagazines [_carbinemag_tr,_defMags_tr];
		[_unit, _carbine] call f_fnc_addWeapon;
		[_unit, _MAT] call f_fnc_addWeapon;
		[_unit, _binos2] call f_fnc_addWeapon;	
	};

	// LOADOUT: MEDIUM AT ASSISTANT GUNNER
	case "matag":
	{
		[_typeOfUnit] call _backpack;
		_unit addMagazines [_carbinemag,_defMags];
		_unit addMagazines [_carbinemag_tr,_defMags_tr];
		[_unit, _carbine] call f_fnc_addWeapon;
		[_unit, _binos2] call f_fnc_addWeapon;
		_unit addMagazines [_grenade,2];
		[_unit, _binos1] call f_fnc_addWeapon;
	};

	// LOADOUT: HEAVY AT GUNNER
	case "hatg":
	{
		[_typeOfUnit] call _backpack;
		_unit addMagazines [_carbinemag,_defMags];
		_unit addMagazines [_carbinemag_tr,_defMags_tr];
		[_unit, _carbine] call f_fnc_addWeapon;
		[_unit, _HAT] call f_fnc_addWeapon;
		[_unit, _binos1] call f_fnc_addWeapon;
	};

	// LOADOUT: HEAVY AT ASSISTANT GUNNER
	case "hatag":
	{
		[_typeOfUnit] call _backpack;
		_unit addMagazines [_carbinemag,_defMags];
		_unit addMagazines [_carbinemag_tr,_defMags_tr];
		[_unit, _carbine] call f_fnc_addWeapon;
		[_unit, _binos1] call f_fnc_addWeapon;
		_unit addMagazines [_grenade,2];
		[_unit, _binos1] call f_fnc_addWeapon;
	};

	// LOADOUT: MORTAR GUNNER
	case "mtrg":
	{
		[_typeOfUnit] call _backpack;
		_unit addMagazines [_carbinemag,_defMags];
		_unit addMagazines [_carbinemag_tr,_defMags_tr];
		[_unit, _carbine] call f_fnc_addWeapon;
		_unit addMagazines [_grenade,2];

		[_unit, _binos1] call f_fnc_addWeapon;
	};

	// LOADOUT: MORTAR ASSISTANT GUNNER
	case "mtrag":
	{
		[_typeOfUnit] call _backpack;
		_unit addMagazines [_carbinemag,_defMags];
		_unit addMagazines [_carbinemag_tr,_defMags_tr];
		[_unit, _carbine] call f_fnc_addWeapon;
		_unit addMagazines [_grenade,2];

		[_unit, _binos1] call f_fnc_addWeapon;
	};

	// LOADOUT: MEDIUM SAM GUNNER
	case "msamg":
	{
		[_typeOfUnit] call _backpack;
		_unit addMagazines [_carbinemag,_defMags];
		_unit addMagazines [_carbinemag_tr,_defMags_tr];
		[_unit, _carbine] call f_fnc_addWeapon;
		_unit addMagazines [_grenade,2];
		_unit addMagazines [_smokegrenade,1];
		_unit addMagazines [_chem,1];
		[_unit, _SAM] call f_fnc_addWeapon;
		[_unit, _binos1] call f_fnc_addWeapon;
		
	};

	// LOADOUT: MEDIUM SAM ASSISTANT GUNNER
	case "msamag":
	{
		[_typeOfUnit] call _backpack;
		_unit addMagazines [_carbinemag,_defMags];
		_unit addMagazines [_carbinemag_tr,_defMags_tr];
		[_unit, _carbine] call f_fnc_addWeapon;
		[_unit, _binos2] call f_fnc_addWeapon;
		_unit addMagazines [_grenade,2];
		[_unit, _binos2] call f_fnc_addWeapon;
	};

	// LOADOUT: HEAVY SAM GUNNER
	case "hsamg":
	{
		[_typeOfUnit] call _backpack;
		_unit addMagazines [_carbinemag,_defMags];
		_unit addMagazines [_carbinemag_tr,_defMags_tr];
		[_unit, _carbine] call f_fnc_addWeapon;
		_unit addMagazines [_grenade,2];
		[_unit, _binos1] call f_fnc_addWeapon;
	};

	// LOADOUT: HEAVY SAM ASSISTANT GUNNER
	case "hsamag":
	{
		[_typeOfUnit] call _backpack;
		_unit addMagazines [_carbinemag,_defMags];
		_unit addMagazines [_carbinemag_tr,_defMags_tr];
		[_unit, _carbine] call f_fnc_addWeapon;
		[_unit, _binos2] call f_fnc_addWeapon;
		_unit addMagazines [_grenade,2];
		[_unit, _binos1] call f_fnc_addWeapon;
	};

	// LOADOUT: SNIPER
	case "sn":
	{
		["small"] call _backpack;
		_unit setUnitTrait ["camouflageCoef",0.7];
		_unit addMagazines [_SNrifleMag,_defMags];
		_unit addMagazines [_SNrifleMag,_defMags_tr];
		[_unit, _SNrifle] call f_fnc_addWeapon;
		_unit addMagazines [_pistolmag,7];
		[_unit, _pistol] call f_fnc_addWeapon;
		_attachments = _attach_sn;
		[_unit, _binos2] call f_fnc_addWeapon;
	};

	// LOADOUT: SPOTTER
	case "sp":
	{
		["small"] call _backpack;
		_unit setUnitTrait ["camouflageCoef",0.7];
		_unit addMagazines [_glriflemag,_defMags];
		_unit addMagazines [_SNrifleMag,_defMags];
		_unit addMagazines [_glriflemag_tr,_defMags_tr];
		_unit addMagazines [_glmag,3];
		_unit addMagazines [_glsmoke,2];
		[_unit, _glrifle] call f_fnc_addWeapon;
		_attachments = [_attach1,_scope2,_silencer];
		[_unit, _binos2] call f_fnc_addWeapon;
		_unit addWeapon "Laserdesignator";
		_unit addMagazines ["Laserbatteries",1];	// Batteries added for the F3 UAV Recharging component		
	};

	// LOADOUT: VEHICLE COMMANDER
	case "vc":
	{
		["cc"] call _backpack;
		_unit setUnitTrait ["engineer",1];
		_unit addMagazines [_smgmag,_defMags];
		[_unit, _smg] call f_fnc_addWeapon;
		_attachments = [];
		[_unit, _binos2] call f_fnc_addWeapon;
	};

	// LOADOUT: VEHICLE DRIVER
	case "vd":
	{
		["cc"] call _backpack;
		_unit setUnitTrait ["engineer",1];
		_unit addMagazines [_smgmag,_defMags];
		[_unit, _smg] call f_fnc_addWeapon;
		_attachments = [];
	};

	// LOADOUT: VEHICLE GUNNER
	case "vg":
	{
		_unit addMagazines [_smgmag,_defMags];
		[_unit, _smg] call f_fnc_addWeapon;
		_attachments = [];
	};

	// LOADOUT: AIR VEHICLE PILOTS
	case "pp":
	{
		["cc"] call _backpack;
		_unit setUnitTrait ["engineer",1];
		_unit addMagazines [_smgmag,_defMags];
		[_unit, _smg] call f_fnc_addWeapon;
		_attachments = [];
		[_unit, _binos2] call f_fnc_addWeapon;
	};

	// LOADOUT: AIR VEHICLE CREW CHIEF
	case "pcc":
	{
		["cc"] call _backpack;
		_unit setUnitTrait ["engineer",1];
		_unit addMagazines [_smgmag,_defMags];
		[_unit, _smg] call f_fnc_addWeapon;
		_attachments = [];

	};

	// LOADOUT: AIR VEHICLE CREW
	case "pc":
	{
		_unit setUnitTrait ["engineer",1];
		_unit addMagazines [_smgmag,_defMags];
		[_unit, _smg] call f_fnc_addWeapon;
		_attachments = [];

	};

	// LOADOUT: ENGINEER (DEMO)
	case "eng":
	{
		[_typeOfUnit] call _backpack;
		_unit setUnitTrait ["engineer",1];
		_unit setUnitTrait ["explosiveSpecialist",1];
		_unit addItem "MineDetector";
		_unit addMagazines [_carbinemag,_defMags];
		_unit addMagazines [_carbinemag_tr,_defMags_tr];
		[_unit, _carbine] call f_fnc_addWeapon;
		_unit addMagazines [_grenade,2];
		_unit addMagazines [_satchel,2];
		[_unit, _binos2] call f_fnc_addWeapon;
	};

	// LOADOUT: ENGINEER (MINES)
	case "engm":
	{
		[_typeOfUnit] call _backpack;
		_unit setUnitTrait ["engineer",1];
		_unit setUnitTrait ["explosiveSpecialist",1];
		_unit addItem "MineDetector";
		_unit addMagazines [_carbinemag,_defMags];
		_unit addMagazines [_carbinemag_tr,_defMags_tr];
		[_unit, _carbine] call f_fnc_addWeapon;
		_unit addMagazines [_grenade,2];
		_unit addMagazines [_APmine2,2];
		[_unit, _binos2] call f_fnc_addWeapon;		
	};

	// LOADOUT: UAV OPERATOR
	case "uav":
	{
		[_typeOfUnit] call _backpack;
		_unit addMagazines [_carbinemag,_defMags];
		_unit addMagazines [_carbinemag_tr,_defMags_tr];
		[_unit, _carbine] call f_fnc_addWeapon;
		_unit addMagazines [_grenade,2];
		_unit linkItem _uavterminal;
		_unit assignItem "Laserdesignator";
		_unit addMagazines ["Laserbatteries",4];	// Batteries added for the F3 UAV Recharging component
		[_unit, _binos2] call f_fnc_addWeapon;
	};

	// LOADOUT: Diver
	case "div":
	{
		[_typeOfUnit] call _backpack;
		_unit addMagazines [_diverMag1,_defMags];
		_unit addMagazines [_diverMag2,_defMags_tr];
		[_unit, _diverWep] call f_fnc_addWeapon;
		_unit addMagazines [_smokegrenade,3];
		_unit addMagazines [_chem,1];
		_unit addMagazines [_grenade,2];
	};

	// LOADOUT: RIFLEMAN
	case "r":
	{
		[_typeOfUnit] call _backpack;
		_unit addMagazines [_riflemag,_defMags];
		_unit addMagazines [_riflemag_tr,_defMags_tr];
		[_unit, _rifle] call f_fnc_addWeapon;
		_unit addMagazines [_smokegrenade,3];
		_unit addMagazines [_chem,1];
		_unit addMagazines [_grenade,2];
		[_unit, _binos1] call f_fnc_addWeapon;
	};

// LOADOUT: CARABINEER
	case "car":
	{
		[_typeOfUnit] call _backpack;
		_unit addMagazines [_carbinemag,_defMags];
		_unit addMagazines [_carbinemag_tr,_defMags_tr];
		[_unit, _carbine] call f_fnc_addWeapon;
		_unit addMagazines [_smokegrenade,3];
		_unit addMagazines [_chem,1];
		_unit addMagazines [_grenade,2];
	};

	// LOADOUT: SUBMACHINEGUNNER
	case "smg":
	{
		[_typeOfUnit] call _backpack;
		_unit addMagazines [_smgmag,_defMags];
		[_unit, _smg] call f_fnc_addWeapon;
		_unit addMagazines [_smokegrenade,3];
		_unit addMagazines [_chem,1];
		_unit addMagazines [_grenade,2];
	};

	// LOADOUT: GRENADIER
	case "gren":
	{
		["g"] call _backpack;
		_unit addMagazines [_glriflemag,_defMags];
		_unit addMagazines [_glriflemag_tr,_defMags_tr];
		[_unit, _glrifle] call f_fnc_addWeapon;
		_unit addMagazines [_glmag,5];
		_unit addMagazines [_glsmoke,2];
		_unit addMagazines [_glflare,2];
		_unit addMagazines [_smokegrenade,3];
		_unit addMagazines [_chem,1];
		_unit addMagazines [_grenade,2];
	};

	// Recon FTL Loadout:
	case "recftl":
	{
		_unit setUnitTrait ["camouflageCoef",0.7];
		["g"] call _backpack;
		_unit addMagazines [_glriflemag,_defMags];
		_unit addMagazines [_glriflemag_tr,_defMags_tr];
		_unit addMagazines [_glmag,5];
		_unit addMagazines [_glsmoke,2];		
		[_unit, _glrifle] call f_fnc_addWeapon;
		_unit addMagazines [_pistolmag,1];
		_attachments = [_attach1,_silencer2,_scope2]; // Overwrites default attachments to add a bipod and scope 2
		[_unit, _pistol] call f_fnc_addWeapon;
		_hg_attachments = [_hg_light1]; //Overwrites default attachments to add a gun light
		_unit additem "Laserbatteries";
		_unit addWeapon "Laserdesignator";
		_unit linkItem _uavterminal;
	};

// Recon UAV Loadout:
	case "recuav":
	{
		_unit setUnitTrait ["camouflageCoef",0.8];
		["uav"] call _backpack;
		_unit addMagazines [_carbinemag,_defMags];
		_unit addMagazines [_carbinemag_tr,_defMags_tr];
		[_unit, _carbine] call f_fnc_addWeapon;
		_attachments = [_attach1,_silencer2,_scope1]; // Overwrites default attachments to add a bipod and scope 2
		_unit addMagazines [_pistolmag,1];
		[_unit, _pistol] call f_fnc_addWeapon;
		_hg_attachments = [_hg_light1]; //Overwrites default attachments to add a gun light
		_unit addItem _firstaid;
		[_unit, _binos2] call f_fnc_addWeapon;
		_unit linkItem _uavterminal;
		_unit addMagazines ["Laserbatteries",2];	// Batteries added for the ACE UAV Recharging component
	};

// Recon Medic Loadout:
	case "recm":
	{
		_unit setUnitTrait ["camouflageCoef",0.8];
		["m"] call _backpack;
		_unit setUnitTrait ["medic",1];
		_unit addMagazines [_riflemag,_defMags];
		_unit addMagazines [_riflemag_tr,_defMags_tr];
		[_unit, _carbine] call f_fnc_addWeapon;
		_attachments = [_attach1,_silencer2,_scope1]; // Overwrites default attachments to add a bipod and scope 2
		_unit addMagazines [_pistolmag,1];
		[_unit, _pistol] call f_fnc_addWeapon;
		_hg_attachments = [_hg_light1]; //Overwrites default attachments to add a gun light
		_unit addMagazines [_pistolmag,2];
		{_unit addItem _firstaid} forEach [1,2,3,4,5,6];
	};

// Recon Marksman
	case "recdm":
	{
		_unit setUnitTrait ["camouflageCoef",0.8];
		_unit addMagazines [_DMriflemag,_defMags];
		_unit addMagazines [_DMriflemag_tr,_defMags_tr];
		[_unit, _DMrifle] call f_fnc_addWeapon;
		_unit addMagazines [_pistolmag,1];
		[_unit, _pistol] call f_fnc_addWeapon;
		[_unit, _binos2] call f_fnc_addWeapon;
		_attachments = [_bipod1,_silencer2,_scope3]; // Overwrites default attachments to add a bipod and scope 2
		_hg_attachments = [_hg_light1]; //Overwrites default attachments to add a gun light
		};

// Recon Base:
	case "rec":
	{
		_unit setUnitTrait ["camouflageCoef",0.8];
		_unit addMagazines [_riflemag,_defMags];
		_unit addMagazines [_riflemag_tr,_defMags_tr];
		[_unit, _rifle] call f_fnc_addWeapon;
		_unit addMagazines [_pistolmag,1];
		_attachments = [_attach1,_silencer2,_scope1]; // Overwrites default attachments to add a bipod and scope 2
		[_unit, _pistol] call f_fnc_addWeapon;
		_hg_attachments = [_hg_light1]; //Overwrites default attachments to add a gun light
		_unit addItemToBackpack  "H_HelmetB_light_sand";
	};

// Recon Engineer Loadout:
	case "receng":
	{
		_unit setUnitTrait ["camouflageCoef",0.8];
		["eng"] call _backpack;
		_unit setUnitTrait ["engineer",1];
		_unit setUnitTrait ["explosiveSpecialist",1];
		_unit addItem "MineDetector";
		_unit addMagazines [_riflemag,_defMags];
		_unit addMagazines [_riflemag_tr,_defMags_tr];
		[_unit, _carbine] call f_fnc_addWeapon;
		_attachments = [_attach1,_silencer2,_scope1]; // Overwrites default attachments to add a bipod and scope 2
		_unit addMagazines [_pistolmag,2];
		[_unit, _pistol] call f_fnc_addWeapon;
		_hg_attachments = [_hg_light1]; //Overwrites default attachments to add a gun light
	};

	case "empty": 
	{
		_skipCheck = true;
	};
	
	#include "f_vehicle_loadout.sqf";

	// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
   default
   {
		_unit addMagazines [_riflemag,_defMags];
		[_unit, _rifle] call f_fnc_addWeapon;

		_unit selectWeapon primaryWeapon _unit;

		if (true) exitWith {diag_log text format ["[F3] DEBUG (f_loadout_a3_west_d.sqf): Unit = %1. Gear template %2 does not exist!",_unit,_typeOfUnit]};
   };

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};

// Handle weapon attachments
#include "..\..\f\assignGear\f_assignGear_attachments.sqf";

// ENSURE UNIT HAS CORRECT WEAPON SELECTED ON SPAWNING
_unit selectWeapon primaryWeapon _unit;