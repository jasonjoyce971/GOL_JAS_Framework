_goggles = "";
_helmet = "CUP_H_CDF_H_PASGT_UN";
_uniform = "CUP_U_B_CZ_WDL_TShirt";
_vest = ["CUP_V_CDF_6B3_2_MNT","CUP_V_CDF_6B3_3_MNT","CUP_V_CDF_6B3_4_MNT","CUP_V_CDF_6B3_5_MNT"] call BIS_fnc_selectRandom;
_backpack = "B_Kitbag_cbr";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "tf_anprc155";
};

if (_role in ["ag","ammg"]) then {
	_backpack = "B_Carryall_cbr";
};
if (_role isEqualTo "crew") then {
	_goggles = "";
	_helmet = "CUP_H_RUS_ZSH_Shield_Up";
	_uniform = "U_I_pilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};
if (_role isEqualTo "p") then {
	_goggles = "";
	_helmet = "CUP_H_BAF_Helmet_Pilot";
	_uniform = "CUP_U_B_CZ_WDL_TShirt";
	_vest = "V_Chestrig_khk";
};
if (_role isEqualTo "marksman") then {
	_goggles = "";
	_helmet = "CUP_H_CDF_Beret_UN";
	_uniform = "CUP_U_B_CZ_WDL_TShirt";
	_vest = "CUP_V_CDF_6B3_2_MNT";
};
if (_role isEqualTo "eod") then {
	_vest = "V_EOD_olive_F";
};
_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = ["CUP_arifle_Sa58RIS2", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "CUP_30Rnd_Sa58_M";
_rifle_mag_tr = "CUP_30Rnd_Sa58_M_TracerR";

_rifleGL = ["CUP_arifle_Sa58RIS2_gl", _silencer, _pointer, _sight, _bipod];
_rifleGL_mag = "CUP_30Rnd_Sa58_M";
_rifleGL_mag_tr = "CUP_30Rnd_Sa58_M_TracerR";

_rifleC = ["SMG_02_F", _silencer, "", "optic_Aco_smg", _bipod];
_rifleC_mag = "30Rnd_9x21_Mag_SMG_02";
_rifleC_mag_tr = "30Rnd_9x21_Mag_SMG_02_Tracer_Red";

_LMG = ["LMG_03_F", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "200Rnd_556x45_Box_F";
_LMG_mag_tr = "200Rnd_556x45_Box_Tracer_Red_F";

_MMG = ["CUP_lmg_Pecheneg", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M";
_MMG_mag_tr = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M";

_LAT = ["CUP_launch_RPG7V", _silencer, "", "", _bipod];
_LAT_mag = "CUP_PG7VR_M";
_LAT_mag_HE = "CUP_TBG7V_M";
_LAT_ReUsable = true;

_MAT = ["CUP_launch_MAAWS", _silencer, "", "CUP_optic_MAAWS_Scope", _bipod];
_MAT_mag = "CUP_MAAWS_HEAT_M";
_MAT_mag_HE = "CUP_MAAWS_HEDP_M";

_pistol = ["CUP_hgun_Phantom", _silencer, "CUP_acc_CZ_M3X", "", _bipod];
_pistol_mag = "CUP_18Rnd_9x19_Phantom";

_rifleMarksman = ["CUP_srifle_CZ750", _silencer, "", "optic_LRPS", "CUP_bipod_Harris_1A2_L"];
_rifleMarksman_mag = "CUP_10Rnd_762x51_CZ750";
_rifleMarksman_mag_tr = "CUP_10Rnd_762x51_CZ750_Tracer";
