
_goggles = "G_Combat";
_helmet = ["H_HelmetB_light_desert","H_HelmetSpecB_paint2"] call BIS_fnc_selectRandom;
_uniform = ["U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt"] call BIS_fnc_selectRandom;
_vest = "V_PlateCarrierSpec_mtp";
_backpack = "B_Kitbag_mcamo";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "tf_rt1523g_big_bwmod";
};

if (_role in ["fac","sl","ftl","g","jtac"]) then {
	_vest = "V_PlateCarrierGL_mtp";
};
if (_role in ["ag","ammg"]) then {
	_backpack = "B_Carryall_mcamo";
};
if (_role isEqualTo "crew") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};
if (_role isEqualTo "p") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetHeli_B";
	_uniform = "U_B_HeliPilotCoveralls";
	_vest = "V_PlateCarrier1_rgr";
};
if (_role isEqualTo "marksman") then {
	_goggles = "G_Tactical_Clear";
	_helmet = "H_Booniehat_mcamo";
	_uniform = "U_B_CombatUniform_mcam_vest";
	_vest = "V_PlateCarrier1_rgr";
};

_silencer = "";
_pointer = "CUP_acc_ANPEQ_15";
_sight = "optic_ACO_grn";
_bipod = "";

_rifle = ["arifle_MX_F", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "30Rnd_65x39_caseless_mag";
_rifle_mag_tr = "30Rnd_65x39_caseless_mag_Tracer";

_rifleGL = ["arifle_MX_GL_F", _silencer, _pointer, _sight, _bipod];
_rifleGL_mag = "30Rnd_65x39_caseless_mag";
_rifleGL_mag_tr = "30Rnd_65x39_caseless_mag_Tracer";

_rifleC = ["arifle_MXC_F", _silencer, "", "", _bipod];
_rifleC_mag_tr = "30Rnd_65x39_caseless_mag_Tracer";

_LMG = ["arifle_MX_SW_F", _silencer, _pointer, _sight, "bipod_01_F_snd"];
_LMG_mag = "100Rnd_65x39_caseless_mag";
_LMG_mag_tr = "100Rnd_65x39_caseless_mag_Tracer";

_MMG = ["MMG_02_camo_F", _silencer, _pointer, _sight, "bipod_01_F_mtp"];
_MMG_mag = "130Rnd_338_Mag";
_MMG_mag_tr = "130Rnd_338_Mag";

_LAT = ["launch_NLAW_F", _silencer, "", "", _bipod];
_LAT_mag = "ACE_PreloadedMissileDummy";
_LAT_mag_HE = "ACE_PreloadedMissileDummy";
_LAT_ReUsable = false;

_MAT = ["launch_B_Titan_short_F", _silencer, "", "", _bipod];
_MAT_mag = "Titan_AT";
_MAT_mag_HE = "Titan_AP";

_pistol = ["hgun_P07_F", _silencer, "", "", _bipod];
_pistol_mag = "16Rnd_9x21_Mag";

_rifleMarksman = ["srifle_DMR_02_sniper_F", _silencer, "CUP_acc_ANPEQ_15", "optic_AMS_snd", "bipod_01_F_snd"];
_rifleMarksman_mag = "ACE_10Rnd_338_API526_Mag";
_rifleMarksman_mag_tr = "ACE_10Rnd_338_API526_Mag";
