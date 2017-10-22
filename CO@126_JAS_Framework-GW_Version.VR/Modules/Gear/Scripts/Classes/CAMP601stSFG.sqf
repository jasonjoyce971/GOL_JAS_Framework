_goggles = "G_Balaclava_TI_G_blk_F";
_helmet = "CUP_H_USArmy_Helmet_ECH1_Black";
_uniform = "rhs_uniform_g3_blk";
_vest = "CUP_V_PMC_CIRAS_Black_Patrol";
_backpack = "B_Kitbag_rgr";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "tf_rt1523g_black";
};

if (_role in ["ag","ammg"]) then {
	_backpack = "B_Carryall_oli";
};
if (_role isEqualTo "eod") then {
	_vest = "V_EOD_olive_F";
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
	_helmet = "CUP_H_USArmy_Helmet_ECH1_Black";
	_uniform = "rhs_uniform_g3_blk";
	_vest = "CUP_V_PMC_CIRAS_Black_Empty";
};

_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = ["arifle_SPAR_03_blk_F", "muzzle_snds_B", "rhsusf_acc_anpeq15side_bk", _sight, _bipod];
_rifle_mag = "20Rnd_762x51_Mag";
_rifle_mag_tr = "20Rnd_762x51_Mag";

if (_role isEqualTo "eod") then {
	_rifle = ["CUP_sgun_M1014", "", "", _sight, _bipod];
	_rifle_mag = "CUP_8Rnd_B_Beneli_74Pellets";
	_rifle_mag_tr = "CUP_8Rnd_B_Beneli_74Slug";
};

_rifleGL = ["rhs_weap_m4a1_carryhandle_m203S", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15side_bk", _sight, _bipod];
_rifleGL_mag = "rhs_mag_30Rnd_556x45_Mk318_Stanag";
_rifleGL_mag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

_rifleC = ["SMG_05_F", "muzzle_snds_L", "rhsusf_acc_anpeq15side_bk", "", ""];
_rifleC_mag = "30Rnd_9x21_Mag_SMG_02";
_rifleC_mag_tr = "30Rnd_9x21_Mag_SMG_02_Tracer_Red";

_LMG = ["LMG_03_F", "muzzle_snds_H_MG_blk_F", "rhsusf_acc_anpeq15side_bk", "", ""];
_LMG_mag = "200Rnd_556x45_Box_Red_F";
_LMG_mag_tr = "200Rnd_556x45_Box_Tracer_Red_F";

_MMG = ["CUP_lmg_Mk48_wdl", "", "rhsusf_acc_anpeq15side_bk", "", ""];
_MMG_mag = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
_MMG_mag_tr = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";

_LAT = ["CUP_launch_MAAWS", _silencer, "", "CUP_optic_MAAWS_Scope", _bipod];
_LAT_mag = "CUP_MAAWS_HEAT_M";
_LAT_mag_HE = "CUP_MAAWS_HEDP_M";
_LAT_ReUsable = true;

_MAT = ["launch_I_Titan_short_F", "", "", "", _bipod];
_MAT_mag = "Titan_AT";
_MAT_mag_HE = "Titan_AP";

_pistol = ["rhsusf_weap_glock17g4", "rhsusf_acc_omega9k", "", "", _bipod];
_pistol_mag = "rhsusf_mag_17Rnd_9x19_JHP";

if (_role isEqualTo "eod") then {
	_pistol = ["CUP_hgun_SA61", "", "", "", _bipod];
	_pistol_mag = "CUP_20Rnd_B_765x17_Ball_M";
};

_rifleMarksman = ["srifle_LRR_F", "", "", "optic_AMS", ""];
_rifleMarksman_mag = "ACE_7Rnd_408_305gr_Mag";
_rifleMarksman_mag_tr = "ACE_7Rnd_408_305gr_Mag";
