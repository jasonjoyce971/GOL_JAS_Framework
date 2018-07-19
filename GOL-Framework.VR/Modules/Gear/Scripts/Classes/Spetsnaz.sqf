
_goggles = "";
_helmet = "CUP_H_RUS_Beret_Spetsnaz";
_uniform = "CUP_U_O_RUS_EMR_2";
_vest = "CUP_V_CDF_6B3_5_MNT";
_backpack = "B_Kitbag_cbr";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "tf_mr3000_bwmod";
};

if (_role in ["fac","sl","ftl","g","jtac"]) then {
	_vest = "CUP_V_CDF_6B3_4_MNT";
};
if (_role in ["ag","ammg"]) then {
	_backpack = "B_Carryall_cbr";
};
if (_role isEqualTo "crew") then {
	_goggles = "";
	_helmet = "CUP_H_RUS_ZSH_Shield_Up";
	_uniform = "CUP_U_O_SLA_Overalls_Pilot";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};
if (_role isEqualTo "p") then {
	_goggles = "";
	_helmet = "CUP_H_RUS_ZSH_Shield_Up";
	_uniform = "CUP_U_O_RUS_EMR_1_VDV";
	_vest = "CUP_V_CDF_6B3_1_MNT";
};
if (_role isEqualTo "marksman") then {
	_goggles = "";
	_helmet = "H_Bandanna_camo";
	_uniform = "CUP_U_O_RUS_Ghillie";
	_vest = "CUP_V_CDF_6B3_2_MNT";
};

_silencer = "muzzle_snds_B";
_pointer = "CUP_acc_ANPEQ_2_grey";
_sight = "optic_ACO_grn";
_bipod = "";

_rifle = ["arifle_AK12_F", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "30Rnd_545x39_Mag_Green_F";
_rifle_mag_tr = "30Rnd_545x39_Mag_Tracer_Green_F";

_rifleGL = ["arifle_AK12_GL_F", _silencer, _pointer, _sight, _bipod];
_rifleGL_mag = "30Rnd_762x39_Mag_Green_F";
_rifleGL_mag_tr = "30Rnd_762x39_Mag_Tracer_Green_F";

_rifleC = ["arifle_AKS_F", "", "", "", ""];
_rifleC_mag_tr = "30Rnd_545x39_Mag_Green_F";

_LMG = ["CUP_arifle_RPK74M", "CUP_muzzle_PBS4", "", "", ""];
_LMG_mag = "CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M";
_LMG_mag_tr = "CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M";

_MMG = ["CUP_lmg_Pecheneg", "", "", "", ""];
_MMG_mag = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M";
_MMG_mag_tr = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M";

_LAT = ["launch_RPG7_F", "", "", "", ""];
_LAT_mag = "RPG7_F";
_LAT_mag_HE = "RPG7_F";
_LAT_ReUsable = true;

_MAT = ["CUP_launch_Metis", "", "", "", ""];
_MAT_mag = "CUP_AT13_M";
_MAT_mag_HE = "CUP_AT13_M";

_pistol = ["hgun_Rook40_F", "muzzle_snds_L", "", "", ""];
_pistol_mag = "16Rnd_9x21_Mag";

_rifleMarksman = ["srifle_DMR_04_F", _silencer, "CUP_acc_ANPEQ_2_grey", "optic_LRPS", "bipod_02_F_blk"];
_rifleMarksman_mag = "10Rnd_127x54_Mag";
_rifleMarksman_mag_tr = "10Rnd_127x54_Mag";
