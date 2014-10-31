// F3 - Folk Assign Gear Script - AAF
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

_scope1 = "rhs_acc_pkas";	// Krechet
_scope2 = "optic_hamr";			// RCO
_scope3 = "optic_SOS";			// SOS Scope - 18x - 75x
_scope4 = "hlc_optic_suit";		// Suit Optic

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
_rifle = "rhs_weap_ak74m";
_riflemag = "rhs_30Rnd_545x39_AK";
_riflemag_tr = "rhs_30Rnd_545x39_7n22_AK";

// Standard Carabineer (Medic, Rifleman (AT), MAT Gunner, MTR Gunner, Carabineer)
_carbine = "rhs_weap_ak74m";
_carbinemag = "rhs_30Rnd_545x39_AK";
_carbinemag_tr = "rhs_30Rnd_545x39_7n22_AK";

// Standard Submachine Gun/Personal Defence Weapon (Aircraft Pilot, Submachinegunner)
_smg = "hlc_rifle_hk53";
_smgmag = "hlc_30rnd_556x45_b_HK33";
_smgmag_tr = "hlc_30rnd_556x45_t_HK33";

// Diver
_diverWep = "arifle_SDAR_F";
_diverMag1 = "30Rnd_556x45_Stanag";
_diverMag2 = "20Rnd_556x45_UW_mag";

// Rifle with GL and HE grenades (CO, DC, FTLs)
_glrifle = "rhs_weap_ak74m_gp25";
_glriflemag = "rhs_30Rnd_545x39_AK";
_glriflemag_tr = "rhs_30Rnd_545x39_7n22_AK";
_glmag = "rhs_VOG25";

// Smoke for FTLs, Squad Leaders, etc
_glsmokewhite = "rhs_GRD40_White";
_glsmokegreen = "rhs_GRD40_Green";
_glsmokered = "rhs_GRD40_Red";

// Flares for FTLs, Squad Leaders, etc
_glflarewhite = "rhs_VG40OP_white";
_glflarered = "rhs_VG40OP_red";
_glflareyellow = "UGL_FlareYellow_F";
_glflaregreen = "rhs_VG40OP_green";

// Pistols (CO, DC, Automatic Rifleman, Medium MG Gunner)
_pistol = "rhs_weap_pya";
_pistolmag = "rhs_mag_9x19_17";

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
_nvg = "NVGoggles_INDEP";

// UAV Terminal
_uavterminal = "O_UavTerminal";

// Chemlights
_chemgreen =  "Chemlight_green";
_chemred = "Chemlight_red";
_chemyellow =  "Chemlight_yellow";
_chemblue = "Chemlight_blue";

// Backpacks
_bagsmall = "B_AssaultPack_khk";			// carries 120, weighs 20
_bagmedium = "B_FieldPack_oli";				// carries 200, weighs 30
_baglarge =  "B_Carryall_oli"; 				// carries 320, weighs 40
_bagmediumdiver =  "B_AssaultPack_blk";		// used by divers
_baguav = "I_UAV_01_backpack_F";			// used by UAV operator
_baghmgg = "I_HMG_01_weapon_F";				// used by Heavy MG gunner
_baghmgag = "I_HMG_01_support_F";			// used by Heavy MG assistant gunner
_baghatg = "I_AT_01_weapon_F";				// used by Heavy AT gunner
_baghatag = "I_HMG_01_support_F";			// used by Heavy AT assistant gunner
_bagmtrg = "I_Mortar_01_weapon_F";			// used by Mortar gunner
_bagmtrag = "I_Mortar_01_support_F";		// used by Mortar assistant gunner
_baghsamg = "I_AA_01_weapon_F";				// used by Heavy SAM gunner
_baghsamag = "I_HMG_01_support_F";			// used by Heavy SAM assistant gunner
_bagTFARlongRANGE = "tf_anprc155"; // used by ground infantry leaders

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
_AR = "BWA3_MG4";
_ARmag = "BWA3_200Rnd_556x45";
_ARmag_tr = "BWA3_200Rnd_556x45";

// Medium MG
_MMG = "rhs_weap_pkp";
_MMGmag = "rhs_100Rnd_762x54mmR";
_MMGmag_tr = "rhs_100Rnd_762x54mmR_green";

// Rifleman AT
_RAT = "rhs_weap_rpg7";
_RATmag = "rhs_rpg7_PG7VL_mag";

// Medium AT
_MAT = "launch_RPG32_F";
_MATmag1 = "RPG32_F";
_MATmag2 = "RPG32_HE_F";

// Surface Air
_SAM = "launch_O_Titan_F";
_SAMmag = "Titan_AA";

// Sniper
_SNrifle = "hlc_rifle_c1A1";
_SNrifleMag = "hlc_20rnd_762x51_t_fal";

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

_baseUniform = ["U_I_CombatUniform","U_I_CombatUniform_shortsleeve","U_I_CombatUniform_tshirt"];
_baseHelmet = ["H_HelmetIA_net","H_HelmetIA_camo","H_HelmetIA"];
_baseGlasses = [];

// Armored vests
_lightRig = ["V_TacVest_blk","V_TacVest_brn","V_TacVest_camo","V_TacVest_oli"];
_mediumRig = ["V_PlateCarrierIA2_dgtl","V_PlateCarrierIA1_dgtl"]; 	// default for all infantry classes
_heavyRig = ["V_PlateCarrierIAGL_dgtl"];

// Diver
_diverUniform =  ["U_I_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherIA"];
_diverGlasses = ["G_Diving"];

// Pilot
_pilotUniform = ["U_I_HeliPilotCoveralls"];
_pilotHelmet = ["H_PilotHelmetHeli_I"];
_pilotRig = ["V_TacVest_oli"];
_pilotGlasses = [];

// Crewman
_crewUniform = ["U_I_CombatUniform"];
_crewHelmet = ["H_HelmetCrew_I"];
_crewRig = ["V_TacVest_oli"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_I_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_oli"];
_ghillieGlasses = [];

// Spec Op - no nice stuff for AAF :(
_sfuniform = _baseUniform;
_sfhelmet = _baseHelmet;
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
	_unit linkItem "tf_anprc148jem";
		
};

// ====================================================================================

// SETUP BACKPACKS
// Include the correct backpack file for the faction

_backpack = {
	_typeofBackPack = _this select 0;
	switch (_typeofBackPack) do
	{
		#include "f_assignGear_aaf_b.sqf";
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