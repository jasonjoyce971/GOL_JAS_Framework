_goggles = "";
_helmet = "rhsusf_ach_bare_headset";
_uniform = "rhs_uniform_g3_rgr";
_vest = "CUP_V_B_MTV_noCB";
_backpack = "B_Kitbag_rgr";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "tf_anprc155_coyote";
};

if (_role in ["ag","ammg"]) then {
	_backpack = "B_Carryall_oli";
};
if (_role in ["sl","ftl","fac","g"]) then {
	_vest = "CUP_V_B_MTV_TL";
};
if (_role isEqualTo "eod") then {
	_vest = "V_EOD_olive_F";
};
if (_role isEqualTo "crew") then {
	_goggles = "";
	_helmet = "CUP_H_RUS_ZSH_Shield_Up";
	_uniform = "rhs_uniform_g3_rgr";
	_vest = "CUP_V_B_MTV";
	_backpack = "B_Parachute";
};
if (_role isEqualTo "p") then {
	_goggles = "";
	_helmet = "CUP_H_USMC_Helmet_Pilot";
	_uniform = "rhs_uniform_g3_rgr";
	_vest = "CUP_V_B_MTV_noCB";
};

_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = ["rhs_weap_m4a1_carryhandle_pmag", "", "", _sight, _bipod];
_rifle_mag = "rhs_mag_30Rnd_556x45_Mk318_Stanag";
_rifle_mag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

_rifleGL = ["rhs_weap_m4a1_carryhandle_m203S", "", "", _sight, _bipod];
_rifleGL_mag = "rhs_mag_30Rnd_556x45_Mk318_Stanag";
_rifleGL_mag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

_rifleC = ["SMG_05_F", "", "", "", ""];
_rifleC_mag = "30Rnd_9x21_Mag_SMG_02";
_rifleC_mag_tr = "30Rnd_9x21_Mag_SMG_02_Tracer_Yellow";

_LMG = ["LMG_Zafir_F", "", "", "", ""];
_LMG_mag = "150Rnd_762x54_Box";
_LMG_mag_tr = "150Rnd_762x51_Box_Tracer_Yellow";

_MMG = ["rhs_weap_m240B", "", "", "", ""];
_MMG_mag = "rhsusf_100Rnd_762x51_m993";
_MMG_mag_tr = "rhsusf_100Rnd_762x51_m993";

_LAT = ["CUP_launch_RPG18", _silencer, "", "", _bipod];
_LAT_mag = "ACE_PreloadedMissileDummy_RPG18_CUP";
_LAT_mag_HE = "ACE_PreloadedMissileDummy_RPG18_CUP";
_LAT_ReUsable = false;

_MAT = ["CUP_launch_Metis", "", "", "", _bipod];
_MAT_mag = "CUP_AT13_M";
_MAT_mag_HE = "CUP_AT13_M";

_pistol = ["CUP_hgun_Duty", "", "", "", _bipod];
_pistol_mag = "16Rnd_9x21_Mag";

_rifleMarksman = ["rhs_weap_m24sws", "", "", "rhsusf_acc_LEUPOLDMK4_2_d", "rhsusf_acc_harris_swivel"];
_rifleMarksman_mag = "rhsusf_5Rnd_762x51_m993_Mag";
_rifleMarksman_mag_tr = "rhsusf_5Rnd_762x51_m993_Mag";
