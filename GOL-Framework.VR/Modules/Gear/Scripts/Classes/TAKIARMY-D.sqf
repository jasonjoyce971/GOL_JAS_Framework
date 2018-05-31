
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
_helmet = "CUP_H_TK_Helmet";
_uniform = "CUP_U_O_TK_MixedCamo";
_vest = "CUP_V_O_TK_Vest_1";
_backpack = "B_Kitbag_sgg";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "tf_bussole";
};

if (_role in ["ag","ammg"]) then {
	_backpack = "B_Carryall_cbr";
};
if (_role isEqualTo "jetp") then {
	_goggles = "";
	_helmet = "CUP_H_RUS_ZSH_Shield_Down";
	_uniform = "CUP_U_O_SLA_Overalls_Pilot";
	_vest = "CUP_V_O_TK_OfficerBelt";
	_backpack = "B_Parachute";
};
if (_role isEqualTo "p") then {
	_goggles = "G_Aviator";
	_helmet = "CUP_H_PMC_EP_Headset";
	_uniform = "CUP_U_O_TK_MixedCamo";
	_vest = "CUP_V_CDF_CrewBelt";
};
if (_role isEqualTo "marksman") then {
	_goggles = "";
	_helmet = "CUP_H_TK_Beret";
	_uniform = "CUP_U_O_TK_MixedCamo";
	_vest = "CUP_V_O_TK_Vest_1";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_B";
	_vest = "V_PlateCarrier1_rgr";
};

if (_role isEqualTo "uav") then {
	_backpack = "O_UAV_01_backpack_F";
	_gps = "O_UAVTerminal";

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

_rifleC = ["CUP_smg_bizon", _silencer, "", "", _bipod];
_rifleC_mag_tr = "CUP_64Rnd_Green_Tracer_9x19_Bizon_M";

_LMG = ["CUP_arifle_RPK74", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M";
_LMG_mag_tr = "CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M";

_MMG = ["CUP_lmg_PKM", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M";
_MMG_mag_tr = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M";

_LAT = ["CUP_launch_RPG18", _silencer, "", "", _bipod];
_LAT_mag = "ACE_PreloadedMissileDummy_RPG18_CUP";
_LAT_mag_HE = "ACE_PreloadedMissileDummy_RPG18_CUP";
_LAT_ReUsable = false;

_MAT = ["CUP_launch_RPG7V", _silencer, "", "", _bipod];
_MAT_mag = "CUP_PG7VR_M";
_MAT_mag_HE = "CUP_TBG7V_M";

_pistol = ["hgun_Pistol_01_F", _silencer, "", "", _bipod];
_pistol_mag = "10Rnd_9x21_Mag";

_rifleMarksman = ["CUP_srifle_SVD_des", _silencer, "", "CUP_optic_PSO_1", ""];
_rifleMarksman_mag = "CUP_10Rnd_762x54_SVD_M";
_rifleMarksman_mag_tr = "CUP_10Rnd_762x54_SVD_M";
