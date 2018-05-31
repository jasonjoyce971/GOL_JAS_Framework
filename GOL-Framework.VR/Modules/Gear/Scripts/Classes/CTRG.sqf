
_goggles = "G_Combat_Goggles_tna_F";
_helmet = "H_HelmetB_TI_tna_F";
_uniform = ["U_B_CTRG_Soldier_F","U_B_CTRG_Soldier_3_F","U_B_CTRG_Soldier_2_F"] call BIS_fnc_selectRandom;
_vest = "V_PlateCarrierH_CTRG";
_backpack = "B_Kitbag_rgr";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "tf_rt1523g_big_bwmod";
};

if (_role in ["ag","ammg"]) then {
	_backpack = "B_Carryall_oli";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_B";
	_vest = "V_PlateCarrier1_rgr";
};
if (_role isEqualTo "p") then {
	_goggles = "";
	_helmet = "H_PilotHelmetHeli_B";
	_uniform = "U_B_CTRG_Soldier_2_F";
	_vest = "V_PlateCarrierL_CTRG";
};
if (_role isEqualTo "marksman") then {
	_uniform = "U_B_CTRG_Soldier_F";
	_vest = "V_PlateCarrierL_CTRG";
};
if (_role isEqualTo "uav") then {
	_backpack = "B_UAV_01_backpack_F";
	_gps = "B_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

_silencer = "muzzle_snds_m_khk_F";
_pointer = "acc_pointer_IR";
_sight = "optic_ACO_grn";
_bipod = "";

_rifle = ["arifle_SPAR_01_khk_F", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "ACE_30Rnd_556x45_Stanag_M995_AP_mag";
_rifle_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

_rifleGL = ["arifle_SPAR_01_GL_khk_F", _silencer, _pointer, _sight, _bipod];
_rifleGL_mag = "ACE_30Rnd_556x45_Stanag_M995_AP_mag";
_rifleGL_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

_rifleC = ["SMG_05_F", "muzzle_snds_L", "acc_pointer_IR", "", _bipod];
_rifleC_mag_tr = "30Rnd_9x21_Mag_SMG_02";

_LMG = ["arifle_SPAR_02_khk_F", _silencer, _pointer, _sight, "bipod_01_F_khk"];
_LMG_mag = "150Rnd_556x45_Drum_Mag_F";
_LMG_mag_tr = "150Rnd_556x45_Drum_Mag_Tracer_F";

_MMG = ["MMG_02_black_F", "muzzle_snds_338_black", _pointer, _sight, "bipod_01_F_blk"];
_MMG_mag = "130Rnd_338_Mag";
_MMG_mag_tr = "130Rnd_338_Mag";

_LAT = ["launch_MRAWS_green_F", _silencer, "", "", _bipod];
_LAT_mag = "MRAWS_HEAT_F";
_LAT_mag_HE = "MRAWS_HE_F";
_LAT_ReUsable = true;

_MAT = ["launch_B_Titan_short_tna_F", "", "", "", _bipod];
_MAT_mag = "Titan_AT";
_MAT_mag_HE = "Titan_AP";

_pistol = ["hgun_P07_khk_F", "muzzle_snds_L", "", "", _bipod];
_pistol_mag = "16Rnd_9x21_Mag";

_rifleMarksman = ["arifle_SPAR_03_khk_F", "muzzle_snds_B_khk_F", "acc_pointer_IR", "optic_AMS_khk", "bipod_01_F_khk"];
_rifleMarksman_mag = "ACE_20Rnd_762x51_M993_AP_Mag";
_rifleMarksman_mag_tr = "ACE_20Rnd_762x51_M993_AP_Mag";
