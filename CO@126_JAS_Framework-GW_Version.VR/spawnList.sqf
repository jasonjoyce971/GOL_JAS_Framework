/*
	AUTHOR: GuzzenVonLidl
	Description:
		What case tha should be called for the zone player is in
	Usage:
		null = [1] spawn GW_Fnc_spawnList;
	Parameters:
		#0: Number:	Activate zone
	Returning Value:
		None
*/
#include "scriptComponent.hpp"
#define	COMPONENT spawnList

params [
	"_case"
];

// Side used in spawning commands. Can be changed by scripting later to allow multiple force spawning.
// Can be west, east or independent
EnemySide = east;

/*
	[
		string - spawn marker
		number - number of units to spawn
		number - radius defining area that random spawn positions can appear
		string - populate type. can be buildings or patrols
		number - number of units in each group
	] spawn Fnc_Populate;
	e.g:
	["zone1", 10, 150, "buildings", 3] spawn Fnc_Populate;
	This will spawn 10 units in buildings within 150m of marker zone1. there will be 3 groups of 3 and a single group of 1 to use up the remainder
*/
Fnc_Populate = {
	_marker = _this select 0;
	_markerPOS = (GetMarkerPos _marker);
	_unitcount = _this select 1;
	_radius = _this select 2;
	_type = _this select 3;
	_groupsize = _this select 4;
	GoLUnitCount = 0;
	BuildingListArray = nearestObjects [_markerPOS, ["house"], _radius];
	BuildingListArray call BIS_fnc_arrayShuffle;
	ObjectMarkerList = _markerPOS nearObjects _radius;
	ObjectMarkerList call BIS_fnc_arrayShuffle;

	while {GoLUnitCount <= _unitcount} do
	{
		if (GoLUnitCount == _unitcount) exitWith {};
		if (_type == "buildings") then
		{
			PopulateType = 0;
		};
		if (_type == "patrols") then
		{
			PopulateType = 1;
		};

		if (PopulateType == 0) then
		{
			GoLUnitCount = GoLUnitCount + 1;
			sleep 1;
			_building = BuildingListArray call BIS_fnc_selectRandom;
			_buildingenterable = [_building] call BIS_fnc_isBuildingEnterable;
			if (_buildingenterable) then
			{
				_buildingpos = [_building] call BIS_fnc_buildingPositions;
				_buildingpos = _buildingpos call BIS_fnc_selectRandom;
				[_marker, _buildingpos, "UP", 1] call Fnc_SpawnUnit;
				_count = count BuildingListArray; if (_count > 15) then
				{
					BuildingListArray = BuildingListArray - [_building];
				};
			};
		};

		if (PopulateType == 1) then
		{
			GoLUnitCount = GoLUnitCount + _groupsize;
			sleep 2;
			["DeathSquad", _marker, _groupsize] call Fnc_SpawnGroup;
			[NewGroup, _marker, _radius, 3, "MOVE", "NORMAL", "RED", "LIMITED", "FILE", "", [3,6,9]] call CBA_fnc_taskPatrol;
		};
	};
	ObjectMarkerList = nil;
};

/*
	[
		string - spawn marker
		pos array - position to spawn at
		string - stance. can be UP, MIDDLE or DOWN
		bool number - is leader? 0 = no, 1 = yes
	] spawn Fnc_SpawnUnit;
	e.g:
	["zone1", [10843.3,8158.47,0.00177002], "UP", 1] spawn Fnc_SpawnUnit;
	This will spawn a unit at the given position. It will be standing and in it's own group.
*/
Fnc_SpawnUnit = {
	_unit = "C_man_1";
	if (EnemySide == west) then
	{
		_unit = "B_Soldier_A_F";
	};
	if (EnemySide == independent) then
	{
		_unit = "I_Soldier_A_F";
	};
	if (EnemySide == east) then
	{
		_unit = "O_Soldier_A_F";
	};
	_marker = _this select 0;
	_spawn = (GetMarkerPos _marker);
	_position = _this select 1;
	_stance = _this select 2;
	_leader = _this select 3;
	if (_leader == 1) then
	{
		_group = "StaticUnit";
		_group = CreateGroup EnemySide;
		_soldier = _group createUnit [_unit, _spawn, [], 0, "FORM"];
		_soldier setposATL _position;
		_soldier setUnitPos _stance;
		_soldier forceSpeed 0;
		[_soldier] call Fnc_RandomDirection;
		StaticGroup = _group;
		NewUnit = _soldier;
	}
	else
	{
		_soldier = StaticGroup createUnit [_unit, _spawn, [], 0, "FORM"];
		_soldier setposATL _position;
		_soldier setUnitPos _stance;
		_soldier forceSpeed 0;
		[_soldier] call Fnc_RandomDirection;
		NewUnit = _soldier;
	};

	// Check Surroundings
	_unitobjectarray = GetPos NewUnit nearObjects 2;
	_baseside = side NewUnit;
	{
		_side = side _x;
		if (_side == _baseside && NewUnit != _x) then
		{
			_unitPOS = GetPos _x;
			_newpos = [(_unitPOS select 0) - random(25), (_unitPOS select 1) + random(25), _unitPOS select 2]; _unitPOS = _newpos;
			_x setposATL _unitPOS;
		};
	} forEach _unitobjectarray;
};

/*
	[
		string - group name
		string - spawn marker
		number - number of units to spawn
	] spawn Fnc_SpawnGroup;
	e.g:
	["Zone1Group1", "zone1", 5] spawn Fnc_SpawnGroup;
	This will spawn a group of 5 units at marker zone1. The group can be referenced by script later by its name.
*/
Fnc_SpawnGroup = {
	_group = _this select 0;
	_marker = _this select 1;
	_number = _this select 2;
	_group = CreateGroup EnemySide;
	NewGroup = _group;
	_unit = "C_man_1";
	if (EnemySide == west) then
	{
		_unit = "B_Soldier_A_F";
	};
	if (EnemySide == independent) then
	{
		_unit = "I_Soldier_A_F";
	};
	if (EnemySide == east) then
	{
		_unit = "O_Soldier_A_F";
	};
	for "_i" from 1 to _number do
	{
		_soldier = _group createUnit [_unit,(GetMarkerPos _marker),[],0,"private"];
	};
};

/*
	[
		number - number of units to spawn
		string - spawn marker
		number - radius of civi activity around the marker
	] spawn Fnc_SpawnCivilians;
	e.g:
	[10, "zone1", 250] spawn Fnc_SpawnCivilians;
	This will spawn 10 civilians around marker zone1. They will move around up to 250m from the marker
*/
Fnc_SpawnCivilians = {
	_number = _this select 0;
	_marker = _this select 1;
	_range = _this select 2;
	_speeds = ["LIMITED","NORMAL"];
	ObjectMarkerList = getMarkerPos _marker nearObjects _range;

	for "_i" from 1 to _number do
	{
		_unit = ["C_man_1","C_Man_casual_1_F","C_Man_casual_2_F","C_Man_casual_3_F","C_man_sport_1_F","C_man_sport_2_F","C_man_sport_3_F","C_Man_casual_4_F","C_Man_casual_5_F","C_Man_casual_6_F"] call BIS_fnc_selectRandom;
		_group = CreateGroup Civilian;
		NewGroup = _group;
		_soldier = _group createUnit [_unit,(GetMarkerPos _marker),[],0,"private"];
		_speed = _speeds call BIS_fnc_selectRandom;
		[NewGroup, _marker, _range, 3, "MOVE", "NORMAL", "RED", _speed, "FILE", "", [3,6,9]] call CBA_fnc_taskPatrol;
	};
	ObjectMarkerList = nil;
};

/*
	[
		string - group name (if used with a newly spawned vehicle, this will be "VehTeam")
		pos array - position of waypoint
		number - waypoint index
		string - waypoint type
		string - waypoint formation
		string - waypoint combat mode
		string - waypoint behaviour
		string - waypoint speed
	] spawn Fnc_wayPoint;
	e.g:
	["VehTeam", [12738,12254.1,0.00131989], 1, "MOVE", "WEDGE", "YELLOW", "AWARE", "NORMAL"] spawn Fnc_wayPoint;
	This will create a waypoint for a vehicle crew at the given position. It is set to be index 1, the crew will move there in wedge at normal speed. They are combat aware and will react by returning fire if contacted
*/
Fnc_wayPoint = {
	_group = _this select 0;
	_moveto = _this select 1;
	_index = _this select 2;
	_type = _this select 3;
	_formation = _this select 4;
	_mode = _this select 5;
	_behaviour = _this select 6;
	_speed = _this select 7;
	_wp = NewGroup addWaypoint [_moveto, _index];
	_wp = [NewGroup, _index] setWaypointType _type;
	_wp = [NewGroup, _index] setWaypointFormation _formation;
	_wp = [NewGroup, _index] setWaypointCombatMode _mode;
	_wp = [NewGroup, _index] setWaypointBehaviour _behaviour;
	_wp = [NewGroup, _index] SetWaypointSpeed _speed;
};

/*
	As above but destination position is randomised from the given position
*/
Fnc_wayPointRandom = {
	_group = _this select 0;
	_moveto = _this select 1;
	_index = _this select 2;
	_type = _this select 3;
	_formation = _this select 4;
	_mode = _this select 5;
	_behaviour = _this select 6;
	_speed = _this select 7;
	_X = _moveto select 0;
	_Y = _moveTo select 1;
	_X = _X + ((Random 200)-50);
	_Y = _Y + ((Random 200)-50);
	_wp = NewGroup addWaypoint [[_X,_Y,0], _index];
	_wp = [NewGroup, _index] setWaypointType _type;
	_wp = [NewGroup, _index] setWaypointFormation _formation;
	_wp = [NewGroup, _index] setWaypointCombatMode _mode;
	_wp = [NewGroup, _index] setWaypointBehaviour _behaviour;
	_wp = [NewGroup, _index] SetWaypointSpeed _speed;
};

/*
	[
		string - bunker type. Can be Land_fortified_nest_big_EP1 or Land_fortified_nest_small_EP1
		pos array - position to spawn at
		number - direction to face
		number - number of units inside
	] spawn Fnc_SpawnBunker;
	e.g:
	["Land_fortified_nest_big_EP1", [1844.85,5725.56,0.00143862], 173, 4] spawn Fnc_SpawnBunker;
	This will spawn a bunker of the given type and the given position facing heading 173. There will be 4 units inside.
*/
Fnc_SpawnBunker = {
	_fortification = _this select 0;
	_location = _this select 1;
	_direction = _this select 2;
	_number = _this select 3;
	_bunker = createVehicle [_fortification, _location, [], 0, "CAN_COLLIDE"];
	_bunker SetDir (_direction) + 180;
	_bunker setVectorUp [0,0,0.01];
	_cnt = 0;
	_posarray = [];
	while {format ["%1", _bunker BuildingPos _cnt] != "[0,0,0]" } do
	{
		_pos = _bunker BuildingPos _cnt;
		_posarray = _posarray + [_pos];
		_cnt = _cnt + 1; sleep 0.01;
	};
	_group = CreateGroup EnemySide;
	for "_i" from 1 to _number do
	{
		_unit = "C_man_1";
		if (EnemySide == west) then
		{
			_unit = "B_Soldier_A_F";
		};
		if (EnemySide == independent) then
		{
			_unit = "I_Soldier_A_F";
		};
		if (EnemySide == east) then
		{
			_unit = "O_Soldier_A_F";
		};
		_buildingPos = random _cnt;
		_soldier = _group createUnit [_unit,_location, [], 0, "FORM"];
		_soldier forceSpeed 0;
		_soldier setUnitPos "UP";
		_soldier setPos (_bunker buildingPos _buildingPos);
		[_soldier] call Fnc_RandomDirection;
	};
	NewGroup = _group;
};

/*
	[
		string - vehicle class name
		pos array - position to spawn at
		number - direction to face
		bool number - 0 = vehicle is static, 1 = vehicle can move
		number - number of crew/passengers to add
	] spawn Fnc_SpawnVehicle;
	e.g:
	["rhsusf_m1025_w_m2", [1844.85,5725.56,0.00143862], 88, 1, 3] spawn Fnc_SpawnVehicle;
	This will spawn the given vehicle at the given position. It will face heading 88 and will have a crew of 3. The vehicle is static and will never move
*/
Fnc_SpawnVehicle = {
	_vehicle = _this select 0;
	_location = _this select 1;
	_direction = _this select 2;
	_static = _this select 3;
	_number = _this select 4;
	_vehicle = createVehicle [_vehicle, _location, [], 0, "CAN_COLLIDE"];
	_vehicle setDir _direction;
	if (_static == 1) then
	{
		_vehicle setFuel 0;
	};
	_group = CreateGroup EnemySide;
	NewGroup = _group;
	for "_i" from 1 to _number do
	{
		_unit = "C_man_1";
		if (EnemySide == west) then
		{
			_unit = "B_Soldier_A_F";
		};
		if (EnemySide == independent) then
		{
			_unit = "I_Soldier_A_F";
		};
		if (EnemySide == east) then
		{
			_unit = "O_Soldier_A_F";
		};
		_soldier = _group createUnit [_unit,_location, [], 0, "FORM"];
		_soldier moveInAny _vehicle;
	};
	NewVehicle = _vehicle;
	clearWeaponCargoGlobal _vehicle;
	ClearMagazineCargoGlobal _vehicle;
	ClearItemCargoGlobal _vehicle;
	clearBackpackCargoGlobal _vehicle;
};

/*
	[
		string - aircraft class name
		pos array - position to spawn at
		number - heading of aircraft
	]spawn Fnc_SpawnPlane;
	e.g:
	["B_Plane_CAS_01_F", [6451.74,5437.13,0.00148487], 0] spawn Fnc_SpawnPlane;
	This will spawn an aircraft of the given type at the given position. It will spawn and begin flying on heading 0.
*/
Fnc_SpawnPlane = {
	_vehicle = _this select 0;
	_location = _this select 1;
	_direction = _this select 2;
	_vehicle = createVehicle [_vehicle, _location, [], 0, "FLY"];
	_vehicle setDir _direction;
	_vehicle setVelocity [(sin (getDir _vehicle))*100, (cos (getDir _vehicle))*100, 0];

	_group = CreateGroup EnemySide;
	_unit = "C_man_1";
	if (EnemySide == west) then
	{
		_unit = "B_Soldier_A_F";
	};
	if (EnemySide == independent) then
	{
		_unit = "I_Soldier_A_F";
	};
	if (EnemySide == east) then
	{
		_unit = "O_Soldier_A_F";
	};
	_soldier = _group createUnit [_unit,_location, [], 0, "FORM"];
	_soldier assignAsDriver _vehicle;
	_soldier moveInDriver _vehicle;
	NewGroup = _group;
	NewVehicle = _vehicle;
};

/*
	[
		string - weapon classname
		pos array - posiiton to spawn at
		number - direction of facing
	] spawn Fnc_StaticWeapon;
	e.g:
	["RDS_KORD_high_CSAT", [1897.04,5729.67,0.00145102], 191] spawn Fnc_StaticWeapon;
	This will spawn a machine gun at the given position facing heading 191
*/
Fnc_StaticWeapon = {
	_vehicle = _this select 0;
	_location = _this select 1;
	_direction = _this select 2;
	_vehicle = createVehicle [_vehicle, _location, [], 0, "CAN_COLLIDE"];
	_vehicle setDir _direction;
	sleep 2;
	_group = CreateGroup EnemySide;
	_unit = "C_man_1";
	if (EnemySide == west) then
	{
		_unit = "B_Soldier_A_F";
	};
	if (EnemySide == independent) then
	{
		_unit = "I_Soldier_A_F";
	};
	if (EnemySide == east) then
	{
		_unit = "O_Soldier_A_F";
	};
	_soldier = _group createUnit [_unit,_location, [], 0, "FORM"];
	_soldier assignAsGunner _vehicle;
	_soldier moveInGunner _vehicle;
	[_soldier] call Fnc_RandomDirection;
};

/*
	[
		string - aircraft classname
		string - marker ground units will move to after landing
		string - direction aircraft will come from. Must be cardinal points - N, NE, E, SE, S, SW, W, NW
		number - alititude in meters for aircraft to fly
		number - distance from marker to begin jumping
	] spawn Fnc_Paradrop;
	e.g:
	["O_Heli_Transport_04_covered_F", "zone1", "NW", 250, 850] spawn Fnc_Paradrop;
	This will spawn the given helicopter at 250m AGL to the north west of marker zone1. 850m from the marker, troops will parajump. Once on deck, the units will head for marker zone1.
*/
Fnc_Paradrop = {
	_vehicle = _this select 0;
	_marker = _this select 1;
	_markerPOS = getMarkerPos _marker;
	_direction = _this select 2;
	_altitude = _this select 3;
	_distance = _this select 4;
	_CrewCount = [_vehicle, true] call BIS_fnc_crewCount;

	//[ X, Y, Z]
	if (_direction == "N") then {
		_newpos = [_markerPOS select 0, (_markerPOS select 1) + 4000, (_markerPOS select 2) + _altitude]; VehicleLocation = _newpos;
	};
	if (_direction == "NE") then {
		_newpos = [(_markerPOS select 0) + 4000, (_markerPOS select 1) + 4000, (_markerPOS select 2) + _altitude]; VehicleLocation = _newpos;
	};
	if (_direction == "E") then {
		_newpos = [(_markerPOS select 0) + 4000, _markerPOS select 1, (_markerPOS select 2) + _altitude]; VehicleLocation = _newpos;
	};
	if (_direction == "SE") then {
		_newpos = [(_markerPOS select 0) + 4000, (_markerPOS select 1) - 4000, (_markerPOS select 2) + _altitude]; VehicleLocation = _newpos;
	};
	if (_direction == "S") then {
		_newpos = [_markerPOS select 0, (_markerPOS select 1) - 4000, (_markerPOS select 2) + _altitude]; VehicleLocation = _newpos;
	};
	if (_direction == "SW") then {
		_newpos = [(_markerPOS select 0) + 4000, _markerPOS select 1, (_markerPOS select 2) + _altitude]; VehicleLocation = _newpos;
	};
	if (_direction == "W") then {
		_newpos = [(_markerPOS select 0) - 4000, _markerPOS select 1, (_markerPOS select 2) + _altitude]; VehicleLocation = _newpos;
	};
	if (_direction == "NW") then {
		_newpos = [(_markerPOS select 0) - 4000, (_markerPOS select 1) + 4000, (_markerPOS select 2) + _altitude]; VehicleLocation = _newpos;
	};

	_vehicle = createVehicle [_vehicle, VehicleLocation, [], 0, "FLY"]; _vehlocation = GetPos _vehicle; _vehicle flyInHeight _altitude;

	_group = CreateGroup EnemySide;
	for "_i" from 1 to _CrewCount do
	{
		_unit = "C_man_1";
		if (EnemySide == west) then
		{
			_unit = "B_Soldier_A_F";
		};
		if (EnemySide == independent) then
		{
			_unit = "I_Soldier_A_F";
		};
		if (EnemySide == east) then
		{
			_unit = "O_Soldier_A_F";
		};
		_soldier = _group createUnit [_unit,_vehlocation,[],0,"private"];
		_soldier moveInAny _vehicle;
	};
	NewGroup = _group;
	[_group, _markerPOS, 0, "MOVE", "WEDGE", "YELLOW", "AWARE", "FULL"] call Fnc_wayPoint;
	[_group, _markerPOS, 1, "SAD", "WEDGE", "YELLOW", "AWARE", "FULL"] call Fnc_wayPoint;

	_distancecheck = _vehicle distance getMarkerPos _marker;
	while {_distancecheck > _distance} do {
		_distancecheck = _vehicle distance getMarkerPos _marker;
		if(_distancecheck < _distance) exitWith { [_vehicle] spawn Fnc_ParadropInitiate; };
		sleep 5;
	};
};

Fnc_ParadropInitiate = {
	_vehicle = _this select 0; //_driver = assignedDriver _vehicle; 	[_driver] join grpNull;
	_list = assignedCargo _vehicle;
	{
		_unit = _x;
		_airframe = vehicle _unit;
		_airframe land "NONE";
		_height = ((GetPosASL _unit) select 2); _height = round _height;
		_unit disableCollisionWith _airframe;
		_unit action ["EJECT", _airframe];
		moveOut _unit;
		removeBackPack _unit;
		_direction = getDir _airframe;
		_pos = GetPos _airframe;
		_newpos = [_pos select 0, _pos select 1, (_pos select 2) - 2]; _paradrop = _newpos;
		_unit setposATL (_paradrop);
		sleep 1.5;
		_unit AddBackPack "B_Parachute";
	} forEach _list;
};

Fnc_RandomDirection = {
	_unit = _this select 0;
	ObjectMarkerList = GetPos _unit nearObjects 50;
	Obj1 = ObjectMarkerList call BIS_fnc_selectRandom; Loc1 = GetPosASL Obj1;
	_typeX = typeOf Obj1;
	_inignore = (str _typeX) in ['"HouseFly"','"ButterFly_random"','"HoneyBee"','"Mosquito"','"#mark"','"FxWindPollen1"','"FireFly"'];
	if (_inignore) then { } else { _unit commandWatch Obj1; };
	ObjectMarkerList = nil;
};

Fnc_RandomPosition = {
	_unit = _this select 0;
	_pos1 = _this select 1;
	_pos2 = _this select 2;
	_pos3 = _this select 3;
	_positions = [_pos1,_pos2,_pos3]; _position = _positions call BIS_fnc_selectRandom;
	_unit setposATL _position;
};

Fnc_DefendArea = { // A function for a group to defend, run directly after spawning a group! [] spawn Fnc_DefendArea;
	[NewGroup] spawn CBA_fnc_taskDefend;
};

Fnc_SearchBuildings = { // A function for a group to search a nearby building, run directly after spawning a group! [] spawn Fnc_SearchBuildings;
	[NewGroup] spawn CBA_fnc_searchNearby;
};

Fnc_AttackGroup = { // Force group to Search and Destroy random players, run directly after spawning a group! *DOESN'T WORK IN THE EDITOR* [] spawn Fnc_AttackGroup;
	{
		if(isTouchingGround _x) then {
			if (isNil ("PlayerArrayList")) then {
					PlayerArrayList = [_x];
			} else {
				PlayerArrayList = PlayerArrayList + [_x];
			};
		};
	} forEach playableUnits;

	_inignore = ["wecho1","wecho2","wecho3","wecho4","eecho1","eecho2","eecho3","eecho4","iecho1","iecho2","iecho3","iecho4"];
	{
		PlayerArrayList = PlayerArrayList - [_x];
	} forEach _inignore;

	PlayerArrayList call BIS_fnc_arrayShuffle;
	_RandomPlayer = PlayerArrayList call BIS_fnc_selectRandom;
	[NewGroup, GetPos(_RandomPlayer), 100] call CBA_fnc_taskAttack;
};

Fnc_LightsOut = {
	_marker = _this select 0;
	_types = ["Land_PortableLight_double_F","Land_PortableLight_single_F","Land_FloodLight_F","Land_NavigLight","Land_NavigLight_3_F","Land_Flush_Light_yellow_F","Land_Flush_Light_red_F","Land_Flush_Light_green_F","Land_runway_edgelight","Land_runway_edgelight_blue_F","Land_Runway_PAPI","Land_Runway_PAPI_2","Land_Runway_PAPI_3","Land_Runway_PAPI_4","Lamps_Base_F","PowerLines_base_F","Land_PowerPoleWooden_F","Land_LampHarbour_F","Land_LampShabby_F","Land_PowerPoleWooden_L_F","Land_PowerPoleWooden_small_F","Land_LampDecor_F","Land_LampHalogen_F","Land_LampSolar_F","Land_LampStreet_small_F","Land_LampStreet_F","Land_LampAirport_F","Land_PowerPoleWooden_L_F","Land_fs_roof_F","Land_fs_sign_F"];

	for [{_i=0},{_i < (count _types)},{_i=_i+1}] do {
		_lamps = getMarkerPos _marker nearObjects [_types select _i, 2000];
		sleep 0.5;
		{
			_x setDamage 0.97;
			(_x) switchLight "off";
			_x setLightBrightness 0;
			_x setLightAmbient [0.0, 0.0, 0.0];
			_x setLightColor [0.0, 0.0, 0.0];
		} forEach _lamps;
	};
};

switch (_case) do {

	case 1: {
	};

	case 2: {
	};

	case 3: {
	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
