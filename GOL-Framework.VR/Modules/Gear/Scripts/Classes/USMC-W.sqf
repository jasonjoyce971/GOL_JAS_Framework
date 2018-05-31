
_goggles = "G_Combat";
_helmet = "rhsusf_lwh_helmet_marpatwd_headset_blk";
_uniform = "rhs_uniform_FROG01_wd";
_vest = "rhsusf_spc_light";
_backpack = "rhsusf_assault_eagleaiii_coy";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "tf_rt1523g_big_bwmod";
};

if (_role in ["fac","sl","ftl","g","jtac"]) then {
	_vest = "rhsusf_spc_squadleader";
};
if (_role in ["ag","ammg"]) then {
	_backpack = "B_Carryall_khk";
	_vest = "rhsusf_spc_corpsman";
};
if (_role in ["ar","mmg"]) then {
	_vest = "rhsusf_spc_mg";
};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "RHS_jetpilot_usaf";
	_uniform = "U_I_pilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};
if (_role isEqualTo "p") then {
	_goggles = "G_Aviator";
	_helmet = "CUP_H_USMC_Helmet_Pilot";
	_uniform = "rhs_uniform_FROG01_wd";
	_vest = "rhsusf_spc_crewman";
};
if (_role isEqualTo "marksman") then {
	_goggles = "G_Tactical_Clear";
	_helmet = "rhs_booniehat2_marpatwd";
	_uniform = "rhs_uniform_FROG01_wd";
	_vest = "rhsusf_spc_light";
};
if (_role isEqualTo "crew") then {
	_helmet = "CUP_H_USMC_Crew_Helmet";
	_vest = "rhsusf_spc_crewman";
};
if (_role isEqualTo "uav") then {
	_backpack = "B_UAV_01_backpack_F";
	_gps = "B_UAVTerminal";
};

_silencer = "";
_pointer = "rhsusf_acc_anpeq15side_bk";
_sight = "";
_bipod = "";

_rifle = ["rhs_weap_m16a4_carryhandle_pmag", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "rhs_mag_30Rnd_556x45_Mk318_Stanag";
_rifle_mag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

_rifleGL = ["rhs_weap_m16a4_carryhandle_M203", _silencer, _pointer, _sight, _bipod];
_rifleGL_mag = "rhs_mag_30Rnd_556x45_Mk318_Stanag";
_rifleGL_mag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

_rifleC = ["rhs_weap_m4_mstock", _silencer, "", "", _bipod];
_rifleC_mag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

_LMG = ["rhs_weap_m249", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "rhs_200rnd_556x45_M_SAW";
_LMG_mag_tr = "rhs_200rnd_556x45_T_SAW";

_MMG = ["rhs_weap_m240B", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "rhsusf_100Rnd_762x51_m993";
_MMG_mag_tr = "rhsusf_100Rnd_762x51_m62_tracer";

_LAT = ["rhs_weap_M136_hedp", _silencer, "", "", _bipod];
_LAT_mag = "rhs_m136_hedp_mag";
_LAT_mag_HE = "rhs_m136_hedp_mag";
_LAT_ReUsable = false;

_MAT = ["rhs_weap_smaw_green", _silencer, "", "rhs_weap_optic_smaw", _bipod];
_MAT_mag = "rhs_mag_smaw_HEAA";
_MAT_mag_HE = "rhs_mag_smaw_HEDP";

_pistol = ["rhsusf_weap_m1911a1", _silencer, "", "", _bipod];
_pistol_mag = "rhsusf_mag_7x45acp_MHP";

_rifleMarksman = ["rhs_weap_m40a5_wd", _silencer, _pointer, "optic_LRPS", "rhsusf_acc_harris_swivel"];
_rifleMarksman_mag = "rhsusf_10Rnd_762x51_m993_Mag";
_rifleMarksman_mag_tr = "rhsusf_10Rnd_762x51_m993_Mag";
