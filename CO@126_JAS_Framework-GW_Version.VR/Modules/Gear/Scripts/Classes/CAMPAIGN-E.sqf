
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
_helmet = ["H_Shemag_olive","H_ShemagOpen_tan","CUP_H_TKI_Lungee_01","CUP_H_TKI_Lungee_02","CUP_H_TKI_Lungee_03","CUP_H_TKI_Lungee_04","CUP_H_TKI_Lungee_05"] call BIS_fnc_selectRandom;
_uniform = ["U_BG_Guerilla1_2_F","CUP_O_TKI_Khet_Jeans_04","CUP_O_TKI_Khet_Jeans_02","CUP_O_TKI_Khet_Jeans_01","CUP_O_TKI_Khet_Jeans_03","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_3_F"] call BIS_fnc_selectRandom;

switch (_uniform) do
{
	case "U_BG_Guerilla1_2_F":
	{
		_vest = "V_Pocketed_olive_F";
	};
	case "CUP_O_TKI_Khet_Jeans_04":
	{
		_vest = "CUP_V_OI_TKI_Jacket3_04";
	};
	case "CUP_O_TKI_Khet_Jeans_02":
	{
		_vest = "CUP_V_OI_TKI_Jacket3_05";
	};
	case "CUP_O_TKI_Khet_Jeans_01":
	{
		_vest = "CUP_V_OI_TKI_Jacket3_06";
	};
	case "CUP_O_TKI_Khet_Jeans_03":
	{
		_vest = "CUP_V_OI_TKI_Jacket2_04";
	};
	case "U_I_C_Soldier_Para_2_F":
	{
		_vest = "V_TacChestrig_grn_F";
	};
	case "U_I_C_Soldier_Para_3_F":
	{
		_vest = "V_TacChestrig_oli_F";
	};
};

_backpack = ["B_LegStrapBag_coyote_F","B_Kitbag_rgr"] call BIS_fnc_selectRandom;
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "tf_bussole";
};

if (_role in ["ag","ammg"]) then {
	_backpack = "B_Carryall_oli";
};

_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = ["CUP_arifle_AK74", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "CUP_30Rnd_545x39_AK_M";
_rifle_mag_tr = "CUP_30Rnd_TE1_Green_Tracer_545x39_AK_M";

_rifleGL = ["CUP_arifle_AK74_GL", _silencer, _pointer, _sight, _bipod];
_rifleGL_mag = "CUP_30Rnd_545x39_AK_M";
_rifleGL_mag_tr = "CUP_30Rnd_TE1_Green_Tracer_545x39_AK_M";

_rifleC = ["CUP_arifle_AKS74", _silencer, "", "", _bipod];
_rifleC_mag = "CUP_30Rnd_545x39_AK_M";
_rifleC_mag_tr = "CUP_30Rnd_TE1_Green_Tracer_545x39_AK_M";

_LMG = ["CUP_arifle_RPK74", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M";
_LMG_mag_tr = "CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M";

_MMG = ["CUP_lmg_PKM", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M";
_MMG_mag_tr = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M";

_LAT = ["CUP_launch_RPG7V", _silencer, "", "", _bipod];
_LAT_mag = "CUP_PG7VR_M";
_LAT_mag_HE = "CUP_TBG7V_M";
_LAT_ReUsable = true;

_MAT = ["CUP_launch_Igla", _silencer, "", "", _bipod];
_MAT_mag = "ACE_PreloadedMissileDummy_Igla_CUP";
_MAT_mag_HE = "ACE_PreloadedMissileDummy_Igla_CUP";

_pistol = ["hgun_Pistol_01_F", _silencer, "", "", _bipod];
_pistol_mag = "10Rnd_9x21_Mag";

if (_role isEqualTo "crew") then
{
	_pistol = ["CUP_hgun_SA61", _silencer, "", "", _bipod];
	_pistol_mag = "CUP_20Rnd_B_765x17_Ball_M";
};

_rifleMarksman = ["CUP_srifle_SVD", _silencer, "", "CUP_optic_PSO_1", ""];
_rifleMarksman_mag = "CUP_10Rnd_762x54_SVD_M";
_rifleMarksman_mag_tr = "CUP_10Rnd_762x54_SVD_M";
