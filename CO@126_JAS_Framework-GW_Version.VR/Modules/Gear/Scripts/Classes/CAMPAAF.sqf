_goggles = "";
_helmet = "CUP_H_CDF_H_PASGT_UN";
_uniform = ["U_I_CombatUniform","U_I_CombatUniform_shortsleeve"] call BIS_fnc_selectRandom;
_vest = "V_PlateCarrierIA1_dgtl";
_backpack = "B_AssaultPack_dgtl";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "tf_anprc155";
};

if (_role in ["ag","ammg"]) then {
	_backpack = "B_Carryall_oli";
};
if (_role isEqualTo "eod") then {
	_vest = "V_PlateCarrierIAGL_oli";
};
if (_role isEqualTo "crew") then {
	_goggles = "";
	_helmet = "H_PilotHelmetFighter_I";
	_uniform = "U_I_pilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};
if (_role isEqualTo "p") then {
	_goggles = "";
	_helmet = "H_PilotHelmetHeli_I";
	_uniform = "U_I_HeliPilotCoveralls";
	_vest = "V_Chestrig_khk";
};

_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_rifle = ["arifle_Mk20C_F", "", "", _sight, _bipod];
_rifle_mag = "30Rnd_556x45_Stanag";
_rifle_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

_rifleGL = ["arifle_Mk20_GL_F", "", "", _sight, _bipod];
_rifleGL_mag = "30Rnd_556x45_Stanag";
_rifleGL_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

_rifleC = ["SMG_02_F", "", "", "", ""];
_rifleC_mag = "30Rnd_9x21_Mag_SMG_02";
_rifleC_mag_tr = "30Rnd_9x21_Mag_SMG_02_Tracer_Red";

_LMG = ["LMG_Mk200_F", "", "", "", ""];
_LMG_mag = "200Rnd_65x39_cased_Box";
_LMG_mag_tr = "200Rnd_65x39_cased_Box_Tracer";

_MMG = ["LMG_03_F", "", "", "", ""];
_MMG_mag = "200Rnd_556x45_Box_Red_F";
_MMG_mag_tr = "200Rnd_556x45_Box_Tracer_Red_F";

_LAT = ["launch_NLAW_F", _silencer, "", "", _bipod];
_LAT_mag = "ACE_PreloadedMissileDummy";
_LAT_mag_HE = "ACE_PreloadedMissileDummy";
_LAT_ReUsable = false;

_MAT = ["launch_I_Titan_short_F", "", "", "", _bipod];
_MAT_mag = "Titan_AT";
_MAT_mag_HE = "Titan_AP";

_pistol = ["hgun_ACPC2_F", "", "", "", _bipod];
_pistol_mag = "9Rnd_45ACP_Mag";

_rifleMarksman = ["srifle_DMR_03_F", "", "", "optic_AMS", "bipod_03_F_blk"];
_rifleMarksman_mag = "ACE_20Rnd_762x51_Mk319_Mod_0_Mag";
_rifleMarksman_mag_tr = "ACE_20Rnd_762x51_M993_AP_Mag";
