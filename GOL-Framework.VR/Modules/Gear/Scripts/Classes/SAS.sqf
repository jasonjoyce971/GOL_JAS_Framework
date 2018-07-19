_glHE = "rhs_mag_M433_HEDP";
_glsmokeG = "rhs_mag_m4009";

_goggles = "rhs_googles_clear";
_helmet = "H_Shemag_olive_hs";
_uniform = ["CUP_U_B_BAF_MTP_S3_RolledUp","CUP_U_B_BAF_MTP_S5_UnRolled"] call BIS_fnc_selectRandom;
_vest = "CUP_V_BAF_Osprey_Mk4_MTP_Rifleman";
_backpack = "B_Bergen_mcamo_F";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "tf_rt1523g_big_rhs";
};

if (_role in ["fac","sl","ftl","jtac","pl"]) then {
	_vest = "CUP_V_BAF_Osprey_Mk4_MTP_SquadLeader";
};
if (_role isEqualTo "g") then {
	_vest = "CUP_V_BAF_Osprey_Mk4_MTP_Grenadier";
};
if (_role isEqualTo "crew") then {
	_goggles = "";
	_helmet = "RHS_jetpilot_usaf";
	_uniform = "U_I_pilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};
if (_role isEqualTo "p") then {
	_goggles = "";
	_helmet = "CUP_H_BAF_Helmet_Pilot";
	_uniform = "CUP_U_B_BAF_MTP_S5_UnRolled";
	_vest = "CUP_V_BAF_Osprey_Mk4_MTP_SquadLeader";
};
if (_role isEqualTo "marksman") then {
	_uniform = "CUP_U_B_BAF_MTP_S5_UnRolled";
	_vest = "CUP_V_BAF_Osprey_Mk4_MTP_SquadLeader";
};

_silencer = "rhsusf_acc_nt4_tan";
_pointer = "CUP_acc_LLM";
_sight = "";
_bipod = "";

_rifle = ["rhs_weap_m4a1_d", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "rhs_mag_30Rnd_556x45_Mk318_Stanag";
_rifle_mag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

_rifleGL = ["rhs_weap_m4a1_m203s_d", _silencer, _pointer, _sight, _bipod];
_rifleGL_mag = "rhs_mag_30Rnd_556x45_Mk318_Stanag";
_rifleGL_mag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

_rifleC = ["SMG_05_F", "muzzle_snds_L", "", "optic_ACO_grn_smg", _bipod];
_rifleC_mag_tr = "30Rnd_9x21_Mag_SMG_02_Tracer_Red";

_LMG = ["LMG_03_F", "muzzle_snds_H_MG_blk_F", _pointer, _sight, _bipod];
_LMG_mag = "200Rnd_556x45_Box_Tracer_Red_F";
_LMG_mag_tr = "200Rnd_556x45_Box_Tracer_Red_F";

_MMG = ["CUP_lmg_L7A2", "", "", "", ""];
_MMG_mag = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
_MMG_mag_tr = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";

_LAT = ["launch_NLAW_F", "", "", "", ""];
_LAT_mag = "ACE_PreloadedMissileDummy";
_LAT_mag_HE = "ACE_PreloadedMissileDummy";
_LAT_ReUsable = false;

_MAT = ["rhs_weap_fgm148", "", "", "", ""];
_MAT_mag = "rhs_fgm148_magazine_AT";
_MAT_mag_HE = "rhs_fgm148_magazine_AT";

_pistol = ["CUP_hgun_Glock17_tan", "muzzle_snds_L", "CUP_acc_Glock17_Flashlight", "optic_MRD", ""];
_pistol_mag = "CUP_17Rnd_9x19_glock17";

_rifleMarksman = ["CUP_srifle_AS50", "", "acc_pointer_IR", "optic_LRPS", ""];
_rifleMarksman_mag = "CUP_5Rnd_127x99_as50_M";
_rifleMarksman_mag_tr = "CUP_5Rnd_127x99_as50_M";
