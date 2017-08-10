
_goggles = "G_Combat";
_helmet = "H_HelmetO_oucamo";
_uniform = "U_O_CombatUniform_oucamo";
_vest = "V_TacChestrig_oli_F";
_backpack = "B_FieldPack_oucamo";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "tf_mr3000";
};

if (_role in ["fac","sl","ftl","g"]) then {
	_vest = "V_TacChestrig_oli_F";
};
if (_role in ["ag","ammg"]) then {
	_backpack = "B_Carryall_oucamo";
};
if (_role isEqualTo "crew") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_O";
	_uniform = "U_O_PilotCoveralls";
	_vest = "V_Chestrig_khk";
	_backpack = "B_Parachute";
};
if (_role isEqualTo "p") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetHeli_O";
	_uniform = "U_O_OfficerUniform_ocamo";
	_vest = "V_HarnessO_brn";
};
if (_role isEqualTo "marksman") then {
	_goggles = "G_Tactical_Clear";
	_helmet = "H_Booniehat_khk_hs";
	_uniform = "U_O_CombatUniform_oucamo";
	_vest = "V_TacChestrig_oli_F";
	_backpack = "B_Carryall_oucamo";
};

_silencer = "";
_pointer = "acc_pointer_IR";
_sight = "optic_ACO_grn";
_bipod = "";

_rifle = ["arifle_Katiba_F", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "30Rnd_65x39_caseless_green";
_rifle_mag_tr = "30Rnd_65x39_caseless_green_mag_Tracer";

_rifleGL = ["arifle_Katiba_GL_F", _silencer, _pointer, _sight, _bipod];
_rifleGL_mag = "30Rnd_65x39_caseless_green";
_rifleGL_mag_tr = "30Rnd_65x39_caseless_green_mag_Tracer";

_rifleC = ["hgun_PDW2000_F", _silencer, "", "", _bipod];
_rifleC_mag_tr = "30Rnd_9x21_Green_Mag";

_LMG = ["LMG_Zafir_F", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "150Rnd_762x51_Box";
_LMG_mag_tr = "150Rnd_762x51_Box_Tracer";

_MMG = ["MMG_01_tan_F", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "150Rnd_93x64_Mag";
_MMG_mag_tr = "150Rnd_93x64_Mag";

_LAT = ["launch_RPG32_F", _silencer, "", "", _bipod];
_LAT_mag = "RPG32_F";
_LAT_mag_HE = "RPG32_HE_F";
_LAT_ReUsable = true;

_MAT = ["launch_O_Titan_short_F", _silencer, "", "", _bipod];
_MAT_mag = "Titan_AT";
_MAT_mag_HE = "Titan_AP";

_pistol = ["hgun_Rook40_F", _silencer, "", "", _bipod];
_pistol_mag = "16Rnd_9x21_Mag";

_rifleMarksman = ["srifle_DMR_05_tan_f", _silencer, "acc_pointer_IR", "optic_KHS_tan", "bipod_02_F_tan"];
_rifleMarksman_mag = "10Rnd_93x64_DMR_05_Mag";
_rifleMarksman_mag_tr = "10Rnd_93x64_DMR_05_Mag";
