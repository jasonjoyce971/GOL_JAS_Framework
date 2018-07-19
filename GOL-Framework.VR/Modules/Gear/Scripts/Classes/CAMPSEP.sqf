
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
_helmet = "H_Shemag_olive";
_uniform = ["U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_5_F"] call BIS_fnc_selectRandom;
_vest = "V_TacChestrig_oli_F";
_backpack = "B_FieldPack_oli";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "tf_mr3000_rhs";
};

if (_role in ["ag","ammg"]) then {
	_backpack = "B_Carryall_oli";
};

_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = ["CUP_arifle_AK74M", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "CUP_30Rnd_545x39_AK_M";
_rifle_mag_tr = "CUP_30Rnd_TE1_Green_Tracer_545x39_AK_M";

_rifleGL = ["CUP_arifle_AK74M_GL", _silencer, _pointer, _sight, _bipod];
_rifleGL_mag = "CUP_30Rnd_545x39_AK_M";
_rifleGL_mag_tr = "CUP_30Rnd_TE1_Green_Tracer_545x39_AK_M";

_rifleC = ["CUP_arifle_AK74M", _silencer, "", "", _bipod];
_rifleC_mag_tr = "CUP_30Rnd_TE1_Green_Tracer_545x39_AK_M";

_LMG = ["CUP_arifle_RPK74", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M";
_LMG_mag_tr = "CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M";

_MMG = ["CUP_lmg_PKM", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M";
_MMG_mag_tr = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M";

_LAT = ["CUP_launch_RPG7V", _silencer, "", "", _bipod];
_LAT_mag = "CUP_PG7VR_M";
_LAT_mag_HE = "CUP_TBG7V_M";
_LAT_ReUsable = true;

_MAT = ["CUP_launch_9K32Strela", _silencer, "", "", _bipod];
_MAT_mag = "ACE_PreloadedMissileDummy_Strela_2_CUP";
_MAT_mag_HE = "ACE_PreloadedMissileDummy_Strela_2_CUP";

_pistol = ["CUP_hgun_Makarov", _silencer, "", "", _bipod];
_pistol_mag = "CUP_8Rnd_9x18_Makarov_M";

_rifleMarksman = ["CUP_srifle_SVD", _silencer, "", "CUP_optic_PSO_3", ""];
_rifleMarksman_mag = "CUP_10Rnd_762x54_SVD_M";
_rifleMarksman_mag_tr = "CUP_10Rnd_762x54_SVD_M";
