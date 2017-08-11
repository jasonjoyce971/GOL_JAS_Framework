// Sequence of events
// Spawn builder AI units

// Server only executioin
if !(isServer) exitWith {False};

// Allocate variables
_ChopperType = "RHS_UH60M_d";
_GroupSize = 2;
_TakeOff = "medicalBuilders";
_LZ = "buildersLZ";
_Target = "medicalTent";
_Target2 = "medicalLZ";
_Speed = "NORMAL";
_DisperseMark = "ABHold";
_BoxRefPos = "FARPBoxes";
_spawnMarker = "respawn_west";
	
// Allocate marker data
_TakeOffPos = getMarkerPos _TakeOff;
_LZPos = getMarkerPos _LZ;
_TargetPos = getMarkerPos _Target;
_TargetPos2 = getMarkerPos _Target2;
_Dispersal = getMarkerPos _DisperseMark;
_BoxRefMarkPos = getMarkerPos _BoxRefPos;

// Remove Actions from Box
_boxArray = nearestObjects [_BoxRefMarkPos, ["B_Slingload_01_Medevac_F"], 150];
_box = _boxArray select 0;
removeAllActions _box;
	
// Create LZ Helipad for landing
_LZPad = createVehicle["Land_HelipadEmpty_F",_LZPos,[],0,"NONE"];
	
// Create group data
_EagleCrew = createGroup west;
_EagleTeam = createGroup west;
_EagleTeam2 = createGroup west;

//Create chopper
_EagleChopper = createVehicle [_ChopperType,_TakeOffPos,[],0,"NONE"];

// Create Pilot
_Pilot = "rhsusf_army_ucp_helipilot";
_EaglePilot = _EagleCrew createUnit [_Pilot,_TakeOffPos,[],0,"private"];

// Pilot Boards Chopper
_EaglePilot assignAsDriver _EagleChopper;
_EaglePilot moveInDriver _EagleChopper;
	
// Create Ground Units
_unit = "rhsusf_army_ucp_engineer";
_soldier = _EagleTeam createUnit [_unit,_TakeOffPos,[],0,"private"];
_soldier2 = _EagleTeam2 createUnit [_unit,_TakeOffPos,[],0,"private"];
//[_soldier, "SOL"] call Fnc_StoreUnit;

// Load ground units into cargo of chopper
_soldier assignAsCargo _EagleChopper;
_soldier moveInCargo _EagleChopper;
_soldier2 assignAsCargo _EagleChopper;
_soldier2 moveInCargo _EagleChopper;
	
// Assign flight altitude
_EaglePilot flyInHeight 50;

// Protect flight assets to prevent bugs
_EagleChopper allowDamage false;
_EaglePilot allowDamage false;
_soldier allowDamage false;
_soldier2 allowDamage false;

//move chopper to location
_wp = _EagleCrew addWaypoint [_LZPos, 1];
_wp = [_EagleCrew, 1] setWaypointType "TR UNLOAD";
_wp = [_EagleCrew, 1] setWaypointFormation "WEDGE";
_wp = [_EagleCrew, 1] setWaypointCombatMode "YELLOW";
_wp = [_EagleCrew, 1] setWaypointBehaviour "CARELESS";
_wp = [_EagleCrew, 1] SetWaypointSpeed _Speed;

// ground units disembark
_wp1 = _EagleTeam addWaypoint [_LZPos, 1];
_wp1 = [_EagleTeam, 1] setWaypointType "GETOUT";
_wp1 = [_EagleTeam, 1] setWaypointFormation "WEDGE";
_wp1 = [_EagleTeam, 1] setWaypointCombatMode "RED";
_wp1 = [_EagleTeam, 1] setWaypointBehaviour "AWARE";
_wp1 = [_EagleTeam, 1] SetWaypointSpeed "NORMAL";
	
_wp1_1 = _EagleTeam2 addWaypoint [_LZPos, 1];
_wp1_1 = [_EagleTeam2, 1] setWaypointType "GETOUT";
_wp1_1 = [_EagleTeam2, 1] setWaypointFormation "WEDGE";
_wp1_1 = [_EagleTeam2, 1] setWaypointCombatMode "RED";
_wp1_1 = [_EagleTeam2, 1] setWaypointBehaviour "AWARE";
_wp1_1 = [_EagleTeam2, 1] SetWaypointSpeed "NORMAL";
	
// Sync unload waypoints to ensure cargo is disembarked before chopper lifts
[_EagleCrew, 1] synchronizeWaypoint [[_EagleTeam, 1]];
[_EagleCrew, 1] synchronizeWaypoint [[_EagleTeam2, 1]];

// ground units into task
_wp2 = _EagleTeam addWaypoint [_TargetPos, 2];
_wp2 = [_EagleTeam, 2] setWaypointType "MOVE";
_wp2 = [_EagleTeam, 2] setWaypointFormation "WEDGE";
_wp2 = [_EagleTeam, 2] setWaypointCombatMode "YELLOW";
_wp2 = [_EagleTeam, 2] setWaypointBehaviour "SAFE";
_wp2 = [_EagleTeam, 2] SetWaypointSpeed "NORMAL";
	
_wp2_1 = _EagleTeam2 addWaypoint [_TargetPos2, 2];
_wp2_1 = [_EagleTeam2, 2] setWaypointType "MOVE";
_wp2_1 = [_EagleTeam2, 2] setWaypointFormation "WEDGE";
_wp2_1 = [_EagleTeam2, 2] setWaypointCombatMode "YELLOW";
_wp2_1 = [_EagleTeam2, 2] setWaypointBehaviour "SAFE";
_wp2_1 = [_EagleTeam2, 2] SetWaypointSpeed "NORMAL";
	
// move chopper to egress
_wp3 = _EagleCrew addWaypoint [_TakeOffPos, 2];
_wp3 = [_EagleCrew, 2] setWaypointType "MOVE";
_wp3 = [_EagleCrew, 2] setWaypointFormation "WEDGE";
_wp3 = [_EagleCrew, 2] setWaypointCombatMode "YELLOW";
_wp3 = [_EagleCrew, 2] setWaypointBehaviour "CARELESS";
_wp3 = [_EagleCrew, 2] SetWaypointSpeed _Speed;

sleep 300;

// Clean Up Helicopter
deleteVehicle _EagleChopper;
deleteVehicle _EaglePilot;

// Model building materials
_tentPacked = createVehicle ["Land_Pallet_MilBoxes_F",[8755.16,5236.14,0.00131226],[],0,"NONE"];
_lzPacked = createVehicle ["Land_Pallet_MilBoxes_F",[8750.94,5222.05,0.00146484],[],0,"NONE"];

// Anims
[_soldier,"KNEEL_TREAT","FULL"] call BIS_fnc_ambientAnim;
[_soldier2,"KNEEL_TREAT","FULL"] call BIS_fnc_ambientAnim;

// Sleep delay
sleep 300;

[_soldier,"KNEEL","FULL",{true}] call BIS_fnc_ambientAnimCombat;
[_soldier2,"KNEEL","FULL",{true}] call BIS_fnc_ambientAnimCombat;

_BuildingListArray = nearestObjects [_Dispersal, ["house"], 50];
_building = _BuildingListArray call BIS_fnc_selectRandom;

// ground units disperse
_wp4 = _EagleTeam addWaypoint [_Dispersal, 3];
_wp4 = [_EagleTeam, 3] setWaypointType "MOVE";
_wp4 = [_EagleTeam, 3] setWaypointFormation "WEDGE";
_wp4 = [_EagleTeam, 3] setWaypointCombatMode "YELLOW";
_wp4 = [_EagleTeam, 3] setWaypointBehaviour "SAFE";
_wp4 = [_EagleTeam, 3] SetWaypointSpeed "NORMAL";
[_EagleTeam, 3] waypointAttachObject _building;
[_EagleTeam, 3] setWaypointHousePosition 1;
	
_wp4_1 = _EagleTeam2 addWaypoint [_Dispersal, 3];
_wp4_1 = [_EagleTeam2, 3] setWaypointType "MOVE";
_wp4_1 = [_EagleTeam2, 3] setWaypointFormation "WEDGE";
_wp4_1 = [_EagleTeam2, 3] setWaypointCombatMode "YELLOW";
_wp4_1 = [_EagleTeam2, 3] setWaypointBehaviour "SAFE";
_wp4_1 = [_EagleTeam2, 3] SetWaypointSpeed "NORMAL";
[_EagleTeam2, 3] waypointAttachObject _building;
[_EagleTeam2, 3] setWaypointHousePosition 2;

// Model finished product
deleteVehicle _tentPacked;
deleteVehicle _lzPacked;

_tentPacked_1 = createVehicle ["MASH_EP1",[8755.16,5236.14,0.00131226],[],0,"NONE"];
_tentPacked_1 setDir 180;

_lzPacked_1 = createVehicle ["Land_HelipadRescue_F",[8750.94,5222.05,0.00146484],[],0,"NONE"];
_lzPacked_1 setDir 270;

_spawnMarker setMarkerPos _BoxRefMarkPos;

sleep 300;

deleteVehicle _soldier;
deleteVehicle _soldier2;
