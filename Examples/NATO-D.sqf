
_goggles = "G_Tactical_Clear";
_helmet = ["H_HelmetSpecB_paint2","H_HelmetSpecB_paint1","H_HelmetSpecB_snakeskin"] call BIS_fnc_selectRandom;
_uniform = ["U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest","U_B_CombatUniform_mcam_worn"] call BIS_fnc_selectRandom;
_vest = "V_PlateCarrier2_rgr";
_backpack = "B_Kitbag_mcamo";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "tf_rt1523g_big_rhs";
};

if (_role in ["fac","sl","ftl","g","jtac"]) then {
	_vest = "V_PlateCarrierGL_mtp";
};
if (_role in ["ag","ammg"]) then {
	_backpack = "B_Carryall_mcamo";
};
if (_role isEqualTo "crew") then {
	_goggles = "G_Tactical_Clear";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};
if (_role isEqualTo "p") then {
	_goggles = "G_Tactical_Clear";
	_helmet = "H_PilotHelmetHeli_B";
	_uniform = "U_B_HeliPilotCoveralls";
	_vest = "V_TacVest_oli";
};

_silencer = "muzzle_snds_H";
_pointer = "acc_pointer_IR";
_sight = "optic_ACO_grn";
_bipod = "";

_rifle = ["arifle_MX_Black_F", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "30Rnd_65x39_caseless_mag";
_rifle_mag_tr = "30Rnd_65x39_caseless_mag_Tracer";

_rifleGL = ["arifle_MX_GL_Black_F", _silencer, _pointer, _sight, _bipod];
_rifleGL_mag = "30Rnd_65x39_caseless_mag";
_rifleGL_mag_tr = "30Rnd_65x39_caseless_mag_Tracer";

_rifleC = ["arifle_MXC_Black_F", _silencer, "", "", _bipod];
_rifleC_mag_tr = "30Rnd_65x39_caseless_mag_Tracer";

_LMG = ["arifle_MX_SW_Black_F", _silencer, _pointer, _sight, "bipod_01_F_blk"];
_LMG_mag = "100Rnd_65x39_caseless_mag";
_LMG_mag_tr = "100Rnd_65x39_caseless_mag_Tracer";

_MMG = ["MMG_02_black_F", "muzzle_snds_338_black", _pointer, _sight, "bipod_01_F_blk"];
_MMG_mag = "130Rnd_338_Mag";
_MMG_mag_tr = "130Rnd_338_Mag";

_LAT = ["launch_NLAW_F", "", "", "", _bipod];
_LAT_mag = "ACE_PreloadedMissileDummy";
_LAT_mag_HE = "ACE_PreloadedMissileDummy";
_LAT_ReUsable = false;

_MAT = ["launch_I_Titan_short_F", "", "", "", _bipod];
_MAT_mag = "Titan_AT";
_MAT_mag_HE = "Titan_AP";

_pistol = ["hgun_Pistol_heavy_01_F", "muzzle_snds_acp", "acc_flashlight_pistol", "optic_MRD", _bipod];
_pistol_mag = "11Rnd_45ACP_Mag";

_rifleMarksman = ["srifle_DMR_02_F", "muzzle_snds_338_black", "acc_pointer_IR", "optic_AMS", "bipod_01_F_blk"];
_rifleMarksman_mag = "ACE_10Rnd_338_API526_Mag";
_rifleMarksman_mag_tr = "ACE_10Rnd_338_300gr_HPBT_Mag";
