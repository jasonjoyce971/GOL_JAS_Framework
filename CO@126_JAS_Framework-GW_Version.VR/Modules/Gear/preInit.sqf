#include "scriptComponent.hpp"

GVAR(Enabled_101) = true;
GVAR(Enabled_201) = true;
GVAR(Enabled_301) = true;
GVAR(Enabled_302) = true;

GVAR(Index101) = 0;
GVAR(Index201) = 0;
GVAR(Index301) = 0;
GVAR(Index302) = 0;
GVAR(Stamina) = true;
GVAR(StaminaCoef) = 0.5;

// AAC Asset Generation Variables
GVAR(RavenAirframe);
GVAR(GiantAirframe);
GVAR(AngelAirframe);
GVAR(ZeusAirframe);
GVAR(PhantomAirframe);
GVAR(BansheeAirframe);
GVAR(CondorAirframe);
GVAR(AnvilAirframe);

PREP(actions);
PREP(getAttachments);
PREP(getLoadoutClass);
PREP(Handler);
PREP(Init);
PREP(replaceAttachments);

[
	QGVAR(Blufor), "LIST",
	["Loadout Blufor", "Loadout for blufor units"],
	QUOTE(ADDON),
	[
		[
			"NATO-D",
			"NATO-W",
			"NATO-CTRG",
			"BAF-D",
			"SAS",
			"USMC-D",
			"USMC-W",
			"MARSOC",
			"ACR",
			"601stSFG",
			"CDF-D",
			"CDF-F",
			"CDF-M",
			"US-OCP",
			"US-UCP",
			"US-R",
			"SWAT",
			"INSURGENT-D",
			"INSURGENT-W",
			"CAMPAIGN-W",
			"CAMPAIGN-GEORGIA"
		],
		[
			"NATO-Desert",
			"NATO-Woodland",
			"NATO-CTRG",
			"British Army",
			"22 SAS",
			"USMC-Desert",
			"USMC-Woodland",
			"MARSOC",
			"Czech Army",
			"601st SFG",
			"CDF-Desert",
			"CDF-Forest",
			"CDF-Mountain",
			"US Army-OCP",
			"US Army-UCP",
			"US Army Rangers",
			"Tanoa SWAT",
			"INSURGENT-Desert",
			"INSURGENT-Woodland",
			"Campaign-",
			"Campaign-Georgia"
		],
		0
	],
	true
] call FUNCMAIN(settingsInit);

[
	QGVAR(Opfor),
	"LIST", ["Loadout Opfor", "Loadout for opfor units"],
	QUOTE(ADDON),
	[
		[
			"CSAT-H",
			"CSAT-W",
			"CSAT-U",
			"CSAT-V",
			"RUSSIAN-W",
			"SPETSNAZ",
			"TAKIARMY-D",
			"SLA",
			"INSURGENT-D",
			"INSURGENT-W",
			"CAMPAIGN-E",
			"CAMPAIGN-SEP"
		],
		[
			"CSAT-Hex",
			"CSAT-Woodland",
			"CSAT-Urban",
			"CSAT-Vyper Team",
			"Russian-Woodland",
			"Spetsnaz",
			"Takistani Army-Desert",
			"Sahrani Liberation Army",
			"INSURGENT-Desert",
			"INSURGENT-Woodland",
			"Campaign-",
			"Campaign-Seperatists"
		],
		0
	]
	,
	true
] call FUNCMAIN(settingsInit);

[
	QGVAR(Independent),
	"LIST", ["Loadout Independent", "Loadout for independent units"],
	QUOTE(ADDON),
	[
		[
			"AAF-W",
			"PMC",
			"SYND",
			"UN",
			"INSURGENT-D",
			"INSURGENT-W",
			"CAMPAIGN-I",
			"CAMPAIGN-ACR",
			"CAMPAIGN-601",
			"CAMPAIGN-AAF",
			"CAMPAIGN-RACS",
			"CAMPAIGN-CDF"
		],
		[
			"AAF-Woodland",
			"PMC",
			"Syndikat",
			"United Nations",
			"INSURGENT-Desert",
			"INSURGENT-Woodland",
			"Campaign-",
			"Campaign-Czech Army",
			"Campaign-601stSFG",
			"Campaign-AAF",
			"Campaign-RACS",
			"Campaign-CDF"
		],
		0
	],
	true
] call FUNCMAIN(settingsInit);

[
	QGVAR(Auto_Assign), "LIST",
	["Auto assign gear", "automaticly gives gear to spawned units"],
	QUOTE(ADDON),
	[
		[0,1,2],
		["Disabled","All Units","Only Spawned"],
		1
	],
	true
] call FUNCMAIN(settingsInit);

[
	QGVAR(randomGear), "LIST",
	["Random Role", "Should units get random gear"],
	QUOTE(ADDON),
	[
		[true,false],
		["enabled","disabled"],
		1
	],
	true
] call FUNCMAIN(settingsInit);

[
	QGVAR(BlockAIGear), "LIST",
	["Blocks access to ai Inventories", "Stops players from being able to scavenge dead AI"],
	QUOTE(ADDON),
	[
		[true,false],
		["enabled","disabled"],
		0
	],
	true
] call FUNCMAIN(settingsInit);

[
	QGVAR(extraGear), "LIST",
	["Gives units extra loadout", "Medics gets more supplies, AT gets more rockets etc"],
	QUOTE(ADDON),
	[
		[true,false],
		["enabled","disabled"],
		1
	],
	true
] call FUNCMAIN(settingsInit);
