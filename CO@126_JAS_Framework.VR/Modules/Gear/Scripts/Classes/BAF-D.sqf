
_goggles = "G_Combat";
_helmet = "CUP_H_BAF_Helmet_Net_2_MTP";
_uniform = ["CUP_U_B_BAF_MTP_S4_UnRolled","CUP_U_B_BAF_MTP_S3_RolledUp","CUP_U_B_BAF_MTP_S6_UnRolled","CUP_U_B_BAF_MTP_S5_UnRolled"] call BIS_fnc_selectRandom;
_vest = "CUP_V_BAF_Osprey_Mk4_MTP_Rifleman";
_backpack = "B_Bergen_mcamo_F";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "tf_rt1523g_big_rhs";
};

if (_role in ["fac","sl","ftl","jtac","pl"]) then {
	_vest = "CUP_V_BAF_Osprey_Mk4_MTP_SquadLeader";
};
if (_role isEqualTo "g") then {
	_vest = "CUP_V_BAF_Osprey_Mk4_MTP_Grenadier";
};
if (_role in ["ag","ammg"]) then {
	_backpack = "B_Carryall_mcamo";
};
if (_role isEqualTo "crew") then {
	_goggles = "G_Aviator";
	_helmet = "RHS_jetpilot_usaf";
	_uniform = "U_I_pilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};
if (_role isEqualTo "p") then {
	_goggles = "G_Aviator";
	_helmet = "CUP_H_BAF_Helmet_Pilot";
	_uniform = "CUP_U_B_BAF_MTP_Tshirt";
	_vest = "CUP_V_BAF_Osprey_Mk4_MTP_SquadLeader";
};
if (_role isEqualTo "marksman") then {
	_goggles = "G_Tactical_Clear";
	_helmet = "H_Booniehat_mcamo";
	_uniform = "CUP_U_B_BAF_MTP_S6_UnRolled";
	_vest = "CUP_V_BAF_Osprey_Mk4_MTP_SquadLeader";
};

_silencer = "CUP_acc_sffh";
_pointer = "CUP_acc_LLM";
_sight = "";
_bipod = "";

_rifle = ["CUP_arifle_L85A2_G", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "ACE_30Rnd_556x45_Stanag_Mk318_mag";
_rifle_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

_rifleGL = ["CUP_arifle_L85A2_GL", _silencer, _pointer, _sight, _bipod];
_rifleGL_mag = "ACE_30Rnd_556x45_Stanag_Mk318_mag";
_rifleGL_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

_rifleC = ["SMG_05_F", "", "", "optic_ACO_grn_smg", _bipod];
_rifleC_mag_tr = "30Rnd_9x21_Mag_SMG_02_Tracer_Red";

_LMG = ["CUP_lmg_L110A1", "", _pointer, _sight, _bipod];
_LMG_mag = "CUP_200Rnd_TE4_Red_Tracer_556x45_L110A1";
_LMG_mag_tr = "CUP_200Rnd_TE4_Red_Tracer_556x45_L110A1";

_MMG = ["CUP_lmg_L7A2", "", "", "", ""];
_MMG_mag = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
_MMG_mag_tr = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";

_LAT = ["launch_NLAW_F", "", "", "", ""];
_LAT_mag = "ACE_PreloadedMissileDummy";
_LAT_mag_HE = "ACE_PreloadedMissileDummy";
_LAT_ReUsable = false;

_MAT = ["CUP_launch_Javelin", "", "", "", ""];
_MAT_mag = "CUP_Javelin_M";
_MAT_mag_HE = "CUP_Javelin_M";

_pistol = ["CUP_hgun_Glock17_blk", "", "CUP_acc_Glock17_Flashlight", "", ""];
_pistol_mag = "CUP_17Rnd_9x19_glock17";

_rifleMarksman = ["CUP_srifle_L129A1", "", "CUP_acc_LLM", "optic_LRPS", "CUP_bipod_Harris_1A2_L"];
_rifleMarksman_mag = "ACE_20Rnd_762x51_Mk319_Mod_0_Mag";
_rifleMarksman_mag_tr = "ACE_20Rnd_762x51_Mk319_Mod_0_Mag";
