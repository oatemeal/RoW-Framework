// F3 - Folk Assign Gear Script - NATO
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DEFINE EQUIPMENT TABLES
// The blocks of code below identifies equipment for this faction
//
// Defined loadouts:
//		co			- commander
//		dc 			- deputy commander / squad leader
//		m 			- medic
//		ftl			- fire team leader
//		ar 			- automatic rifleman
//		aar			- assistant automatic rifleman
//		rat			- rifleman (AT)
//		mmgg		- medium mg gunner
//		mmgag		- medium mg assistant
//		matg		- medium AT gunner
//		matag		- medium AT assistant
//		hmgg		- heavy mg gunner (deployable)
//		hmgag		- heavy mg assistant (deployable)
//		hatg		- heavy AT gunner (deployable)
//		hatag		- heavy AT assistant (deployable)
//		mtrg		- mortar gunner (deployable)
//		mtrag		- mortar assistant (deployable)
//		msamg		- medium SAM gunner
//		msamag		- medium SAM assistant gunner
//		hsamg		- heavy SAM gunner (deployable)
//		hsamag		- heavy SAM assistant gunner (deployable)
//		sn			- sniper
//		sp			- spotter (for sniper)
//		vc			- vehicle commander
//		vg			- vehicle gunner
//		vd			- vehicle driver (repair)
//		pp			- air vehicle pilot / co-pilot
//		pcc			- air vehicle co-pilot (repair) / crew chief (repair)
//		pc			- air vehicle crew
//		eng			- engineer (demo)
//		engm		- engineer (mines)
//		uav			- UAV operator
//		div    		- divers
//
//		r 			- rifleman
//		car			- carabineer
//		smg			- submachinegunner
//		gren		- grenadier
//
//		v_car		- car/4x4
//		v_tr		- truck
//		v_ifv		- ifv
//
// ====================================================================================

// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES

// ATTACHMENTS - PRIMARY
_attach1 = "acc_pointer_IR";	// IR Laser
_attach2 = "acc_flashlight";	// Flashlight

_silencer1 = "muzzle_snds_M";	// 5.56 suppressor
_silencer2 = "muzzle_snds_H";	// 6.5 suppressor

_scope1 = "RH_ta31rco_2D";	// Holosight
_scope2 = "optic_DMS";			// RCO Scope
_scope3 = "optic_SOS";			// SOS Scope - 18x - 75x
_scope4 = "hlc_optic_artel_m14"; // m14 Redfield Artel

// Default setup
_attachments = [_attach2,_scope1]; // The default attachment set for most units, overwritten in the individual unitType

// [] = remove all
// [_attach1,_scope1,_silencer] = remove all, add items assigned in _attach1, _scope1 and _silencer1
// [_scope2] = add _scope2, remove rest
// false = keep attachments as they are

// ====================================================================================

// ATTACHMENTS - HANDGUN
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor

_hg_scope1 = "optic_MRD";			// MRD

// Default setup
_hg_attachments= []; // The default attachment set for handguns, overwritten in the individual unitType

// ====================================================================================

// WEAPON SELECTION

// Standard Riflemen ( MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, MTR Assistant Gunner, Rifleman)
_rifle = "RH_M16A4";
_riflemag = "30rnd_556x45_STANAG";
_riflemag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

// Standard Carabineer (Medic, Rifleman (AT), MAT Gunner, MTR Gunner, Carabineer)
_carbine = "RH_m4a1_ris";
_carbinemag = "30rnd_556x45_STANAG";
_carbinemag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

// Standard Submachine Gun/Personal Defence Weapon (Aircraft Pilot, Submachinegunner)
_smg = "hlc_rifle_hk53";
_smgmag = "hlc_30rnd_556x45_b_HK33";
_smgmag_tr = "hlc_30rnd_556x45_t_HK33";

// Diver
_diverWep = "arifle_SDAR_F";
_diverMag1 = "30Rnd_556x45_Stanag";
_diverMag2 = "20Rnd_556x45_UW_mag";

// Rifle with GL and HE grenades (CO, DC, FTLs)
_glrifle = "RH_M16A4gl";
_glriflemag = "30rnd_556x45_STANAG";
_glriflemag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Smoke for FTLs, Squad Leaders, etc
_glsmokewhite = "1Rnd_Smoke_Grenade_shell";
_glsmokegreen = "1Rnd_SmokeGreen_Grenade_shell";
_glsmokered = "1Rnd_SmokeRed_Grenade_shell";

// Flares for FTLs, Squad Leaders, etc
_glflarewhite = "UGL_FlareWhite_F";
_glflarered = "UGL_FlareRed_F";
_glflareyellow = "UGL_FlareYellow_F";
_glflaregreen = "UGL_FlareGreen_F";

// Pistols (CO, DC, Automatic Rifleman, Medium MG Gunner)
_pistol = "BWA3_P8";
_pistolmag = "BWA3_15Rnd_9x19_P8";

// Grenades
_grenade = "HandGrenade";
_Mgrenade = "MiniGrenade";
_smokegrenade = "SmokeShell";
_smokegrenadegreen = "SmokeShellGreen";
_smokegrenadeblue = "SmokeShellBlue";
_smokegrenadered = "SmokeShellRed";

// misc medical items.
_firstaid = "FirstAidKit";
_medkit = "Medikit";

// Night Vision Goggles (NVGoggles)
_nvg = "NVGoggles";

// UAV Terminal
_uavterminal = "B_UavTerminal";	  // BLUFOR - FIA

// Chemlights
_chemgreen =  "Chemlight_green";
_chemred = "Chemlight_red";
_chemyellow =  "Chemlight_yellow";
_chemblue = "Chemlight_blue";

// Backpacks
_bagsmall = "B_AssaultPack_mcamo";			// carries 120, weighs 20
_bagmedium = "B_FieldPack_khk";				// carries 240, weighs 30
_baglarge =  "B_Carryall_mcamo"; 			// carries 320, weighs 40
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
_bagTFARlongRANGE = "tf_rt1523g"; // used by ground infantry leaders

// ====================================================================================

// AGM Stuff
_bandage = "AGM_Bandage";					
_epipen = "AGM_Epipen";  					
_morphine = "AGM_Morphine";					
_bloodbag = "AGM_Bloodbag";					
_earplugs = "AGM_EarBuds";					
_sparebarrel = "AGM_SpareBarrel";			
_defusal = "AGM_DefusalKit";
_clacker = "AGM_Clacker";
_vector = "AGM_Vector";
_kestrel = "AGM_ItemKestrel";
_cabletie = "AGM_CableTie";

// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

// Automatic Rifleman
_AR = "rhs_weap_m249_pip";
_ARmag = "rhsusf_100Rnd_556x45_soft_pouch";
_ARmag_tr = "rhsusf_100Rnd_556x45_soft_pouch";

// Medium MG
_MMG = "hlc_lmg_M60E4";
_MMGmag = "hlc_100Rnd_762x51_B_M60E4";
_MMGmag_tr = "hlc_100Rnd_762x51_T_M60E4";

// Rifleman AT
_RAT = "rhs_weap_M136";
_RATmag = "rhs_m136_mag";

// Medium AT
_MAT = "NLAW_F";
_MATmag1 = "H_RacingHelmet_3_F";
_MATmag2 = "H_RacingHelmet_3_F";

// Surface Air
_SAM = "launch_B_Titan_F";
_SAMmag = "Titan_AA";

// Sniper
_SNrifle = "hlc_rifle_m14dmr";
_SNrifleMag = "hlc_20Rnd_762x51_T_M14";

// Engineer items
_ATmine = "ATMine_Range_Mag";
_satchel = "DemoCharge_Remote_Mag";
_APmine1 = "APERSBoundingMine_Range_Mag";
_APmine2 = "APERSMine_Range_Mag";

// ====================================================================================

// CLOTHES AND UNIFORMS

// Define classes. This defines which gear class gets which uniform
// "medium" vests are used for all classes if they are not assigned a specific uniform

_light = [];
_heavy =  ["eng","engm"];
_diver = ["div"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = [];

// Basic clothing
// The outfit-piece is randomly selected from the array for each unit
_baseUniform = ["U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest"];
_baseHelmet = ["H_HelmetB","H_HelmetB_plain_mcamo"];
_baseGlasses = [];

// Armored vests
_lightRig = ["V_TacVest_blk","V_TacVest_brn","V_TacVest_camo","V_TacVest_oli"];
_mediumRig = ["V_PlateCarrier1_rgr","V_PlateCarrier2_rgr"]; 	// default for all infantry classes
_heavyRig = ["V_PlateCarrier3_rgr"];

// Diver
_diverUniform =  ["U_B_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherB"];
_diverGlasses = ["G_Diving"];

// Pilot
_pilotUniform = ["U_B_HeliPilotCoveralls"];
_pilotHelmet = ["H_PilotHelmetHeli_B"];
_pilotRig = ["V_TacVest_blk"];
_pilotGlasses = [];

// Crewman
_crewUniform = ["U_B_CombatUniform_mcam_vest"];
_crewHelmet = ["H_HelmetCrew_B"];
_crewRig = ["V_TacVest_blk"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// Spec Op
_sfuniform = ["U_B_SpecopsUniform_sgg"];
_sfhelmet = ["H_HelmetSpecB","H_HelmetSpecB_paint1","H_HelmetSpecB_paint2","H_HelmetSpecB_blk"];
_sfRig = _mediumRig;
_sfGlasses = [];

// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following inrerprets formats what has been passed to this script element

_typeofUnit = toLower (_this select 0);			// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
_unit = _this select 1;					// expecting name of unit; originally passed by using 'this' in unit init
_isMan = _unit isKindOf "CAManBase";	// We check if we're dealing with a soldier or a vehicle

// ====================================================================================

// This block needs only to be run on an infantry unit
if (_isMan) then {

// HANDLE CLOTHES
// Handle clothes and helmets and such using the include file called next.

	#include "f_assignGear_clothes.sqf";

	// ====================================================================================

	// PREPARE UNIT FOR GEAR ADDITION
	// The following code removes all existing weapons and backpacks

	removeBackpack _unit;
	removeallweapons _unit;

	// We add a single first aid kit (FAK)

	//_unit addItem _firstaid;

	// The following code removes any pre-added NVGs

	if(_nvg in (assignedItems _unit)) then
	{
		_unit unassignItem _nvg;
		_unit removeItem _nvg;
	};
	// uncomment to remove nvgoogles
	//_unit linkItem _nvg;					// add universal NVG for this faction

	//Remove Items
	_unit unassignItem "ItemGPS";
	_unit removeItem "ItemGPS";
	
	//_unit unassignItem "ItemMap";
	//_unit removeItem "ItemMap";
	
	//_unit unassignItem "ItemCompass";
	//_unit removeItem "ItemCompass";
		
	//_unit unassignItem "ItemWatch";
	//_unit removeItem "ItemWatch";
		
	//Set up Short Range Radio	
	_unit unassignItem "ItemRadio";
	_unit removeItem "ItemRadio";	
	_unit linkItem "tf_anprc152";
		
};

// ====================================================================================

// SETUP BACKPACKS
// Include the correct backpack file for the faction

_backpack = {
	_typeofBackPack = _this select 0;
	switch (_typeofBackPack) do
	{
		#include "f_assignGear_nato_b.sqf";
	};
};

// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeofUnit) do
{

// ====================================================================================

// LOADOUT: COMMANDER
	case "co":
	{
		_unit addmagazines [_glriflemag,3];
		_unit addmagazines [_glriflemag_tr,3];
		_unit addmagazines [_glmag,2];
		_unit addmagazines [_glsmokewhite,2];
		_unit addweapon _glrifle;					//_COrifle
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_grenade,1];		
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addWeapon "Rangefinder";
		_unit linkItem "ItemGPS";		
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _cabletie;		
		["g"] call _backpack;
	};

// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
	case "dc":
	{
		_unit addmagazines [_glriflemag,3];
		_unit addmagazines [_glriflemag_tr,3];
		_unit addmagazines [_glmag,2];
		_unit addmagazines [_glsmokewhite,2];
		_unit addweapon _glrifle;					//_DCrifle
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_grenade,1];		
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addWeapon "Rangefinder";
		_unit linkItem "ItemGPS";		
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _cabletie;		
		["g"] call _backpack;
	};

// LOADOUT: MEDIC
	case "m":
	{
		_unit addmagazines [_carbinemag,4];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,4];
		{_unit addItem _bandage} forEach [1,2,3,4,5,6,7,8,9,10];	
		{_unit addItem _morphine} forEach [1,2,3,4,5,6,7,8,9,10];
		{_unit addItem _epipen} forEach [1,2,3,4,5];
		{_unit addItem _bloodbag} forEach [1,2];
		_unit addItem _earplugs;
		["m"] call _backpack;		
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
		_unit addmagazines [_glriflemag,3];
		_unit addmagazines [_glriflemag_tr,3];
		_unit addmagazines [_glmag,2];
		_unit addmagazines [_glsmokewhite,2];
		_unit addweapon _glrifle;					//_FTLrifle
		_unit addmagazines [_grenade,1];		
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadegreen,2];
		_unit addWeapon "Rangefinder";
		_unit linkItem "ItemGPS";
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _cabletie;		
		["ftl"] call _backpack;
	};


// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
		_unit addmagazines [_ARmag,2];
		_unit addmagazines [_ARmag_tr,1];
		_unit addweapon _AR;
		_unit addmagazines [_grenade,1];		
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_pistolmag,4];
		_unit addweapon _pistol;
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _sparebarrel;
		["ar"] call _backpack;
	};

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{
		_unit addmagazines [_riflemag,3];
		_unit addmagazines [_riflemag_tr,3];
		_unit addweapon _rifle;
		_unit addmagazines [_grenade,2];		
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon "Binocular";		
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["aar"] call _backpack;
	};

// LOADOUT: RIFLEMAN (AT)
	case "rat":
	{
		_unit addmagazines [_carbinemag,4];
		_unit addmagazines [_carbinemag_tr,3];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];		
		_unit addmagazines [_smokegrenade,2];
		_unit addweapon _RAT;
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["rat"] call _backpack;
	};

// LOADOUT: MEDIUM MG GUNNER
	case "mmgg":
	{
		_unit addmagazines [_MMGmag,2];
		_unit addmagazines [_MMGmag_tr,1];
		_unit addmagazines [_smokegrenade,2];
		_unit addweapon _MMG;
		_unit addmagazines [_pistolmag,4];
		_unit addweapon _pistol;		
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _sparebarrel;	
		["mmg"] call _backpack;
	};

// LOADOUT: MEDIUM MG ASSISTANT GUNNER
	case "mmgag":
	{
		_unit addmagazines [_riflemag,3];
		_unit addmagazines [_riflemag_tr,3];
		_unit addweapon _rifle;
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_grenade,2];		
		_unit addmagazines [_smokegrenade,2];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["mmgag"] call _backpack;
	};

// LOADOUT: HEAVY MG GUNNER
	case "hmgg":
	{
		_unit addmagazines [_carbinemag,3];
		_unit addmagazines [_carbinemag_tr,3];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];		
		_unit addmagazines [_smokegrenade,1];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["hmgg"] call _backpack;
	};

// LOADOUT: HEAVY MG ASSISTANT GUNNER
	case "hmgag":
	{
		_unit addmagazines [_carbinemag,3];
		_unit addmagazines [_carbinemag_tr,3];
		_unit addweapon _carbine;
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_grenade,1];		
		_unit addmagazines [_smokegrenade,1];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["hmgag"] call _backpack;
	};

// LOADOUT: MEDIUM AT GUNNER
	case "matg":
	{		
		_unit addmagazines [_carbinemag,3];
		_unit addmagazines [_carbinemag_tr,3];
		_unit addweapon _carbine;
		_unit addweapon _MAT;
		_unit addmagazines [_MATMag1,1];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["matg"] call _backpack;
	};

// LOADOUT: MEDIUM AT ASSISTANT GUNNER
	case "matag":
	{
		_unit addmagazines [_carbinemag,3];
		_unit addmagazines [_carbinemag_tr,3];
		_unit addweapon _rifle;
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_riflemag,2];
		_unit addmagazines [_grenade,1];		
		_unit addmagazines [_smokegrenade,2];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["matag"] call _backpack;
	};

// LOADOUT: HEAVY AT GUNNER
	case "hatg":
	{
		_unit addmagazines [_carbinemag,3];
		_unit addmagazines [_carbinemag_tr,3];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,1];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["hatg"] call _backpack;
	};

// LOADOUT: HEAVY AT ASSISTANT GUNNER
	case "hatag":
	{
		_unit addmagazines [_carbinemag,3];
		_unit addmagazines [_carbinemag_tr,3];
		_unit addweapon _carbine;
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,1];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["hatag"] call _backpack;
	};

// LOADOUT: MORTAR GUNNER
	case "mtrg":
	{
		_unit addmagazines [_carbinemag,3];
		_unit addmagazines [_carbinemag_tr,3];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,1];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["mtrg"] call _backpack;
	};

// LOADOUT: MORTAR ASSISTANT GUNNER
	case "mtrag":
	{
		_unit addmagazines [_carbinemag,3];
		_unit addmagazines [_carbinemag_tr,3];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,1];
		_unit addWeapon "Rangefinder";
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["mtrag"] call _backpack;
	};

// LOADOUT: MEDIUM SAM GUNNER
	case "msamg":
	{		
		_unit addmagazines [_carbinemag,3];
		_unit addmagazines [_carbinemag_tr,3];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,1];
		_unit addmagazines [_grenade,1];
		_unit addweapon _SAM;
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["msamg"] call _backpack;
	};

// LOADOUT: MEDIUM SAM ASSISTANT GUNNER
	case "msamag":
	{
		_unit addmagazines [_carbinemag,3];
		_unit addmagazines [_carbinemag_tr,3];
		_unit addweapon _carbine;
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,1];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["msamag"] call _backpack;
	};

// LOADOUT: HEAVY SAM GUNNER
	case "hsamg":
	{
		_unit addmagazines [_carbinemag,3];
		_unit addmagazines [_carbinemag_tr,3];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenade,1];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["hsamg"] call _backpack;
	};

// LOADOUT: HEAVY SAM ASSISTANT GUNNER
	case "hsamag":
	{
		_unit addmagazines [_carbinemag,3];
		_unit addmagazines [_carbinemag_tr,3];
		_unit addweapon _carbine;
		_unit addWeapon "Rangefinder";
		_unit addmagazines [_grenade,1];		
		_unit addmagazines [_smokegrenade,1];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["hsamag"] call _backpack;
	};

// LOADOUT: SNIPER
	case "sn":
	{
		_unit addmagazines [_SNrifleMag,4];
		_unit addweapon _SNrifle;
		_unit addmagazines [_pistolmag,4];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_attachments = [_scope4];
	};

// LOADOUT: SPOTTER
	case "sp":
	{
		_unit addmagazines [_glriflemag,3];
		_unit addmagazines [_glriflemag_tr,3];
		_unit addmagazines [_glmag,3];
		_unit addmagazines [_glsmokewhite,4];
		_unit addweapon _glrifle;					//_COrifle
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon "Rangefinder";
		_unit linkItem "ItemGPS";
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["g"] call _backpack;
	};

// LOADOUT: VEHICLE COMMANDER
	case "vc":
	{
		_unit addmagazines [_glriflemag,3];
		_unit addmagazines [_glriflemag_tr,3];
		_unit addmagazines [_glmag,3];
		_unit addmagazines [_glsmokewhite,4];
		_unit addweapon _glrifle;	
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		_unit addWeapon "Rangefinder";
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["g"] call _backpack;
	};

// LOADOUT: VEHICLE DRIVER
	case "vd":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["cc"] call _backpack;
	};

// LOADOUT: VEHICLE GUNNER
	case "vg":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;

	};

// LOADOUT: AIR VEHICLE PILOTS
	case "pp":
	{
		__unit addmagazines [_glriflemag,3];
		_unit addmagazines [_glriflemag_tr,3];
		_unit addmagazines [_glmag,3];
		_unit addmagazines [_glsmokewhite,4];
		_unit addweapon _glrifle;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		["g"] call _backpack;
	};

// LOADOUT: AIR VEHICLE CREW CHIEF
	case "pcc":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["cc"] call _backpack;
	};

// LOADOUT: AIR VEHICLE CREW
	case "pc":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
	};

// LOADOUT: ENGINEER FTL (DEMO)
	case "engftl":
	{
		_unit addmagazines [_carbinemag,6];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_satchel,2];
		_unit addItem "MineDetector";
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _clacker;
		_unit addItem _defusal;
		["engftl"] call _backpack;
	};	
	
// LOADOUT: ENGINEER (DEMO)
	case "eng":
	{
		_unit addmagazines [_carbinemag,6];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_satchel,2];
		_unit addItem "MineDetector";
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _clacker;
		_unit addItem _defusal;
		["eng"] call _backpack;
	};

// LOADOUT: ENGINEER (MINES)
	case "engm":
	{
		_unit addmagazines [_carbinemag,6];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_mgrenade,1];
		_unit addmagazines [_APmine2,2];
		_unit addItem "MineDetector";
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		_unit addItem _clacker;
		_unit addItem _defusal;
		["engm"] call _backpack;
	};

// LOADOUT: UAV OPERATOR
	case "uav":
	{
		_unit addmagazines [_smgmag,6];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,1];
		_unit linkItem _uavterminal;
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["uav"] call _backpack;
	};

// LOADOUT: Diver
	case "div":
	{
		_unit addmagazines [_diverMag1,3];
		_unit addmagazines [_diverMag2,3];
		_unit addweapon _diverWep;
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_smokegrenade,3];
		_attachments = [_attach1,_scope1,_silencer1];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["div"] call _backpack;
	};

// LOADOUT: RIFLEMAN
	case "r":
	{
		_unit addmagazines [_riflemag,3];
		_unit addmagazines [_riflemag_tr,3];
		_unit addweapon _rifle;
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_smokegrenade,3];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["r"] call _backpack;
	};

// LOADOUT: CARABINEER
	case "car":
	{
		_unit addmagazines [_carbinemag,3];
		_unit addmagazines [_carbinemag_tr,3];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,3];	
		_unit addmagazines [_smokegrenade,3];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["car"] call _backpack;
	};

// LOADOUT: SUBMACHINEGUNNER
	case "smg":
	{
		_unit addmagazines [_smgmag,6];
		_unit addweapon _smg;
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_smokegrenade,3];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["smg"] call _backpack;
	};

// LOADOUT: GRENADIER
	case "gren":
	{
		_unit addmagazines [_glriflemag,3];
		_unit addmagazines [_glriflemag_tr,3];
		_unit addweapon _glrifle;
		_unit addmagazines [_glmag,6];
		_unit addmagazines [_glsmokewhite,2];
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_smokegrenade,2];
		{_unit addItem _bandage} foreach [1,2,3,4,5,6,7];
		_unit addItem _morphine;
		_unit addItem _epipen;
		_unit addItem _earplugs;
		["g"] call _backpack;
	};

// CARGO: CAR - room for 10 weapons and 50 cargo items
	case "v_car":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 2];
		_unit addMagazineCargoGlobal [_riflemag, 8];
		_unit addMagazineCargoGlobal [_glriflemag, 8];
		_unit addMagazineCargoGlobal [_carbinemag, 10];
		_unit addMagazineCargoGlobal [_armag, 5];
		_unit addMagazineCargoGlobal [_ratmag, 1];
		_unit addMagazineCargoGlobal [_grenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addMagazineCargoGlobal [_glmag, 4];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
		_unit addItemCargoGlobal [_bandage,15];
		_unit addItemCargoGlobal [_morphine,5];
		_unit addItemCargoGlobal [_epipen,5];
		_unit addItemCargoGlobal [_bloodbag,2];	
	};

// CARGO: TRUCK - room for 50 weapons and 200 cargo items
	case "v_tr":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 10];
		_unit addMagazineCargoGlobal [_riflemag, 40];
		_unit addMagazineCargoGlobal [_glriflemag, 40];
		_unit addMagazineCargoGlobal [_carbinemag, 40];
		_unit addMagazineCargoGlobal [_armag, 22];
		_unit addMagazineCargoGlobal [_ratmag, 6];
		_unit addMagazineCargoGlobal [_grenade, 12];
		_unit addmagazineCargoGlobal [_mgrenade,12];
		_unit addMagazineCargoGlobal [_smokegrenade, 12];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 4];
		_unit addMagazineCargoGlobal [_glmag, 12];
		_unit addMagazineCargoGlobal [_glsmokewhite, 12];
		_unit addItemCargoGlobal [_bandage,15];
		_unit addItemCargoGlobal [_morphine,5];
		_unit addItemCargoGlobal [_epipen,5];
		_unit addItemCargoGlobal [_bloodbag,2];	
	};

// CARGO: IFV - room for 10 weapons and 100 cargo items
	case "v_ifv":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 4];
		_unit addMagazineCargoGlobal [_riflemag, 20];
		_unit addMagazineCargoGlobal [_glriflemag, 20];
		_unit addMagazineCargoGlobal [_carbinemag, 20];
		_unit addMagazineCargoGlobal [_armag, 8];
		_unit addMagazineCargoGlobal [_ratmag, 2];
		_unit addMagazineCargoGlobal [_grenade, 8];
		_unit addmagazineCargoGlobal [_mgrenade,8];
		_unit addMagazineCargoGlobal [_smokegrenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addMagazineCargoGlobal [_glmag, 8];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
		_unit addItemCargoGlobal [_bandage,15];
		_unit addItemCargoGlobal [_morphine,5];
		_unit addItemCargoGlobal [_epipen,5];
		_unit addItemCargoGlobal [_bloodbag,2];	
	};

// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
   default
   {
		_unit addmagazines [_riflemag,7];
		_unit addweapon _rifle;

		_unit selectweapon primaryweapon _unit;

		if (true) exitwith {player globalchat format ["DEBUG (f\assignGear\folk_assignGear.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.",_unit,_typeofunit]};
   };


// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};

// ====================================================================================

// If this isn't run on an infantry unit we can exit
if !(_isMan) exitWith {};

// ====================================================================================

// Handle weapon attachments
#include "f_assignGear_attachments.sqf";

// ====================================================================================

// ENSURE UNIT HAS CORRECT WEAPON SELECTED ON SPAWNING

_unit selectweapon primaryweapon _unit;