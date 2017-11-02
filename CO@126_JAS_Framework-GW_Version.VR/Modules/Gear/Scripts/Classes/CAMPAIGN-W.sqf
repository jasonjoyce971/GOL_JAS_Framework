// AAC Assets
GW_Gear_AngelAirframe = "";
GW_Gear_AnvilAirframe = "";
GW_Gear_BansheeAirframe = "";
GW_Gear_CondorAirframe = "";
GW_Gear_GiantAirframe = "";
GW_Gear_PhantomAirframe = "";
GW_Gear_RavenAirframe = "";
GW_Gear_ZeusAirframe = "";

// Cloths
_goggles = "";
_helmet = "";
_uniform = "";
_vest = "";
_backpack = "";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "";
};

if (_role in ["ag","ammg"]) then {
	_backpack = "";
};
if (_role isEqualTo "crew") then {
	_helmet = "";
	_vest = "";
};
if (_role isEqualTo "p") then {
	_helmet = "";
	_uniform = "";
	_vest = "";
};

// Attachments
_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

// Primary Weapon
_rifle = ["", _silencer, _pointer, _sight, _bipod];
_rifleC = ["", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["", _silencer, _pointer, _sight, _bipod];
_rifleMarksman = ["", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "";
_rifle_mag_tr = "";

_LMG = ["", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "";
_LMG_mag_tr = "";

_MMG = ["", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "";
_MMG_mag_tr = "";

// Launchers
_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

_LAT = ["", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

_MAT = ["", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "";
_MAT_mag_HE = "";

// Pistol
_pistol = ["", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "";
