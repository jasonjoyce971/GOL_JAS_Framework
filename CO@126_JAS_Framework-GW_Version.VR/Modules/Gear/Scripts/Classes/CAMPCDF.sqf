_glHE = "CUP_1Rnd_HE_GP25_M";
_glsmokeW = "CUP_1Rnd_SMOKE_GP25_M";
_glsmokeB = "";
_glsmokeG = "CUP_1Rnd_SmokeGreen_GP25_M";
_glsmokeO = "";
_glsmokeP = "";
_glsmokeR = "CUP_1Rnd_SmokeRed_GP25_M";
_glsmokeY = "CUP_1Rnd_SmokeYellow_GP25_M";

_glflareG = "CUP_FlareGreen_GP25_M";
_glflareR = "CUP_FlareRed_GP25_M";

_goggles = "";
_helmet = "CUP_H_CDF_H_PASGT_UN";
_uniform = ["CUP_U_B_CDF_FST_2","CUP_U_B_CDF_FST_1"] call BIS_fnc_selectRandom;
_vest = ["CUP_V_CDF_6B3_2_FST","CUP_V_CDF_6B3_3_FST","CUP_V_CDF_6B3_4_FST","CUP_V_CDF_6B3_5_FST"] call BIS_fnc_selectRandom;
_backpack = "CUP_B_CivPack_WDL";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "tf_anprc155";
};

if (_role in ["ag","ammg"]) then {
	_backpack = "B_Carryall_oli";
};
if (_role isEqualTo "eod") then {
	_vest = "V_EOD_olive_F";
};
if (_role isEqualTo "crew") then {
	_goggles = "";
	_helmet = "CUP_H_RUS_ZSH_Shield_Up";
	_uniform = "CUP_U_I_RACS_PilotOverall";
	_vest = "CUP_V_CDF_CrewBelt";
	_backpack = "B_Parachute";
};
if (_role isEqualTo "p") then {
	_goggles = "";
	_helmet = "CUP_H_BAF_Helmet_Pilot";
	_uniform = "CUP_U_B_CDF_FST_2";
	_vest = "CUP_V_CDF_6B3_2_FST";
};

_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = ["CUP_arifle_AK74", "", "", _sight, _bipod];
_rifle_mag = "CUP_30Rnd_545x39_AK_M";
_rifle_mag_tr = "CUP_30Rnd_TE1_Red_Tracer_545x39_AK_M";

_rifleGL = ["CUP_arifle_AK74_GL", "", "", _sight, _bipod];
_rifleGL_mag = "CUP_30Rnd_545x39_AK_M";
_rifleGL_mag_tr = "CUP_30Rnd_TE1_Red_Tracer_545x39_AK_M";

_rifleC = ["CUP_arifle_AKS74", "", "", "", ""];
_rifleC_mag = "CUP_30Rnd_545x39_AK_M";
_rifleC_mag_tr = "CUP_30Rnd_TE1_Red_Tracer_545x39_AK_M";

_LMG = ["CUP_arifle_RPK74", "", "", "", ""];
_LMG_mag = "CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M";
_LMG_mag_tr = "CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M";

_MMG = ["CUP_lmg_PKM", "", "", "", ""];
_MMG_mag = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M";
_MMG_mag_tr = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M";

_LAT = ["CUP_launch_RPG7V", _silencer, "", "", _bipod];
_LAT_mag = "CUP_PG7VR_M";
_LAT_mag_HE = "CUP_TBG7V_M";
_LAT_ReUsable = true;

_MAT = ["CUP_launch_Metis", "", "", "", _bipod];
_MAT_mag = "CUP_AT13_M";
_MAT_mag_HE = "CUP_AT13_M";

_pistol = ["CUP_hgun_Makarov", "", "", "", _bipod];
_pistol_mag = "CUP_8Rnd_9x18_Makarov_M";

_rifleMarksman = ["CUP_srifle_SVD", "", "", "CUP_optic_PSO_3", ""];
_rifleMarksman_mag = "CUP_10Rnd_762x54_SVD_M";
_rifleMarksman_mag_tr = "CUP_10Rnd_762x54_SVD_M";
