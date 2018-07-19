_goggles = "";
_helmet = "CUP_H_CDF_H_PASGT_UN";
_uniform = "CUP_U_I_RACS_mech_2";
_vest = ["CUP_V_B_RRV_Scout","CUP_V_B_RRV_Scout2","CUP_V_B_RRV_Scout3"] call BIS_fnc_selectRandom;
_backpack = "CUP_B_USMC_MOLLE_WDL";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "tf_anprc155_coyote";
};

if (_role in ["ag","ammg"]) then {
	_backpack = "B_Carryall_oli";
};
if (_role in ["sl","ftl","fac","g"]) then {
	_vest = "CUP_V_B_RRV_TL";
};
if (_role isEqualTo "eod") then {
	_vest = "V_EOD_olive_F";
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
	_helmet = "CUP_H_USMC_Helmet_Pilot";
	_uniform = "CUP_U_I_RACS_PilotOverall";
	_vest = "CUP_V_B_RRV_Medic";
};

_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = ["CUP_arifle_M16A2", "", "", _sight, _bipod];
_rifle_mag = "30Rnd_556x45_Stanag";
_rifle_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

_rifleGL = ["CUP_arifle_M16A2_GL", "", "", _sight, _bipod];
_rifleGL_mag = "30Rnd_556x45_Stanag";
_rifleGL_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

_rifleC = ["CUP_arifle_M4A1", "", "", "", ""];
_rifleC_mag = "30Rnd_556x45_Stanag";
_rifleC_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

_LMG = ["CUP_lmg_M249_E2", "", "", "", ""];
_LMG_mag = "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";
_LMG_mag_tr = "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";

_MMG = ["CUP_lmg_M240", "", "", "", ""];
_MMG_mag = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
_MMG_mag_tr = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";

_LAT = ["CUP_launch_M136", _silencer, "", "", _bipod];
_LAT_mag = "ACE_PreloadedMissileDummy_CUP";
_LAT_mag_HE = "ACE_PreloadedMissileDummy_CUP";
_LAT_ReUsable = false;

_MAT = ["CUP_launch_MAAWS", "", "", "CUP_optic_MAAWS_Scope", _bipod];
_MAT_mag = "CUP_MAAWS_HEAT_M";
_MAT_mag_HE = "CUP_MAAWS_HEDP_M";

_pistol = ["CUP_hgun_Colt1911", "", "", "", _bipod];
_pistol_mag = "CUP_7Rnd_45ACP_1911";

_rifleMarksman = ["CUP_srifle_M24_wdl", "", "", "optic_AMS_khk", "bipod_01_F_khk"];
_rifleMarksman_mag = "CUP_5Rnd_762x51_M24";
_rifleMarksman_mag_tr = "CUP_5Rnd_762x51_M24";
