
_goggles = "G_Combat";
_helmet = "H_HelmetIA";
_uniform = ["U_I_CombatUniform","U_I_CombatUniform_shortsleeve"] call BIS_fnc_selectRandom;
_vest = "V_PlateCarrierIA2_dgtl";
_backpack = "B_Kitbag_rgr";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "tf_anprc155";
};

if (_role in ["fac","sl","ftl","g","jtac"]) then {
	_vest = "V_PlateCarrierIAGL_dgtl";
};
if (_role in ["ag","ammg"]) then {
	_backpack = "B_Carryall_khk";
};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_I";
	_uniform = "U_I_pilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};
if (_role isEqualTo "p") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetHeli_I";
	_uniform = "U_I_HeliPilotCoveralls";
	_vest = "V_Chestrig_khk";
};
if (_role isEqualTo "marksman") then {
	_goggles = "G_Tactical_Clear";
	_helmet = "H_Booniehat_dgtl";
	_uniform = "U_I_CombatUniform_shortsleeve";
	_vest = "V_PlateCarrierIA1_dgtl";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_B";
	_vest = "V_PlateCarrier1_rgr";
};

if (_role isEqualTo "uav") then {
	_backpack = "I_UAV_01_backpack_F";
	_gps = "I_UAVTerminal";

};

_silencer = "";
_pointer = "acc_pointer_IR";
_sight = "";
_bipod = "";

_rifle = ["arifle_Mk20C_F", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "ACE_30Rnd_556x45_Stanag_Mk318_mag";
_rifle_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

_rifleGL = ["arifle_Mk20_GL_F", _silencer, _pointer, _sight, _bipod];
_rifleGL_mag = "ACE_30Rnd_556x45_Stanag_Mk318_mag";
_rifleGL_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

_rifleC = ["SMG_02_F", _silencer, "", "", _bipod];
_rifleC_mag_tr = "30Rnd_9x21_Mag_SMG_02_Tracer_Red";

_LMG = ["LMG_Mk200_F", _silencer, _pointer, _sight, "bipod_03_F_oli"];
_LMG_mag = "200Rnd_65x39_cased_Box";
_LMG_mag_tr = "200Rnd_65x39_cased_Box_Tracer";

_MMG = ["LMG_Zafir_F", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "150Rnd_762x51_Box";
_MMG_mag_tr = "150Rnd_762x54_Box_Tracer_Red";

_LAT = ["rhs_weap_m72a7", _silencer, "", "", _bipod];
_LAT_mag = "rhs_m72a7_mag";
_LAT_mag_HE = "rhs_m72a7_mag";
_LAT_ReUsable = false;

_MAT = ["launch_NLAW_F", _silencer, "", "", _bipod];
_MAT_mag = "ACE_PreloadedMissileDummy";
_MAT_mag_HE = "ACE_PreloadedMissileDummy";

_pistol = ["hgun_ACPC2_F", _silencer, "acc_flashlight_pistol", "", _bipod];
_pistol_mag = "9Rnd_45ACP_Mag";

_rifleMarksman = ["srifle_DMR_06_camo_F", _silencer, "", "optic_LRPS_tna_F", "bipod_03_F_oli"];
_rifleMarksman_mag = "ACE_20Rnd_762x51_M993_AP_Mag";
_rifleMarksman_mag_tr = "ACE_20Rnd_762x51_M993_AP_Mag";
