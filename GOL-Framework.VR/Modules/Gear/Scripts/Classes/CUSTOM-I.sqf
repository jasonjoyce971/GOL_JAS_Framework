
// Cloths
_goggles = "";				// This is the goggles selection. Leave it if you don't want goggles
_helmet = "";				// This is the helmet selection. Unless there is a specific reason not to, you need a helmet
_uniform = "";				// This is the base uniform selection. Yes, we need clothes
_vest = "";					// This is the vest selection. This can be anything from basic utility belts to full on body armour
_backpack = "";				// This is the basic backpack used by the majority of the squad
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "";	// This backpack is the radio pack used by squad leaders and the AAC. It should come from the TFAR mod or be radio enabled
};

/*
 * The following blocks define alternate equipment for specific roles.
 * You can assign alternate gear for any slot.
 *
 * Slot options are:
 * pl, fac, sl, sm, ftl, r, g, ag, ar, p, crew, mat, amat, ammg, mmg, marksman, pj, uav, jetp, dragon
 *
 * Contact one of the framework team if you are unsure how to do this
 * The most common roles are pre-defined
 *
 */
 
// This block lets you assign an alternate backpack to the medics. Delete it if not needed
if (_role in ["ag","ammg"]) then {
	_backpack = "";
};

// This block lets you assign a different helmet and vest for vehicle crews. Delete it if not needed
if (_role isEqualTo "crew") then {
	_helmet = "";
	_vest = "";
};

// This block lets you assign a different helmet, uniform and vest for helicopter pilots. Delete it if not needed
if (_role isEqualTo "p") then {
	_helmet = "";
	_uniform = "";
	_vest = "";
};

// This blovk lets you assign a completely new loadout for jet pilots. Unless you really want to change it, just leave it
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

// This is the UAV Controller special role. Do not delete
if (_role isEqualTo "uav") then {
	_backpack = "I_UAV_01_backpack_F";
	_gps = "I_UAVTerminal";
};

// Attachments selection for rifles
_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

// Primary Weapons aka Rifles. RifleC = carbine, rifleGL = Rifle with UGL, rifleMarksman = DMR used by AAC Hunter
_rifle = ["", _silencer, _pointer, _sight, _bipod];
_rifleC = ["", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["", _silencer, _pointer, _sight, _bipod];
_rifleMarksman = ["", _silencer, _pointer, _sight, _bipod];

// Magazines for rifles. The names match, so should the ammo
_rifle_mag = "";
_rifle_mag_tr = "";
_rifleC_mag = "";
_rifleC_mag_tr = "";
_rifleGL_mag = "";
_rifleGL_mag_tr = "";
_rifleMarksman_mag = "";
_rifleMarksman_mag_tr = "";

// LMG used by the AR and it's ammo
_LMG = ["", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "";
_LMG_mag_tr = "";

// MMG used by the MMG special role and it's ammo
_MMG = ["", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "";
_MMG_mag_tr = "";

// Launcher attachments. Can be different from above if needed
_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";

// Light AT launcher used by the Rifleman role
_LAT = ["", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "";
_LAT_ReUsable = false;

// Medium AT launcher used by the MAT special role
_MAT = ["", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "";
_MAT_mag_HE = "";

// Pistol. Attachments can be defined here by replacing the variables with strings i.e _silencer can become "muzzle_snds_acp"
_pistol = ["", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "";
