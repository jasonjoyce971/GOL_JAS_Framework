// Sequence of events
// Spawn builder AI units

// Server only executioin
if !(isServer) exitWith {False};

// Allocate variables
_ChopperType = "RHS_UH60M_d";
_GroupSize = 2;
_TakeOff = "medicalBuilders";
_LZ = "buildersLZ";
_Target = "repairmark";
_Target2 = "repairmark_1";
_Target3 = "repairmark_2";
_Target4 = "repairmark_3";
_Target5 = "repairmark_4";
_Target6 = "repairmark_5";
_Speed = "NORMAL";
_DisperseMark = "ABHold";
_BoxRefPos = "FARPBoxes";
	
// Allocate marker data
_TakeOffPos = getMarkerPos _TakeOff;
_LZPos = getMarkerPos _LZ;
_TargetPos = getMarkerPos _Target;
_TargetPos2 = getMarkerPos _Target2;
_TargetPos3 = getMarkerPos _Target3;
_TargetPos4 = getMarkerPos _Target4;
_TargetPos5 = getMarkerPos _Target5;
_TargetPos6 = getMarkerPos _Target6;
_Dispersal = getMarkerPos _DisperseMark;
_BoxRefMarkPos = getMarkerPos _BoxRefPos;

// Remove Actions from Box
_boxArray = nearestObjects [_BoxRefMarkPos, ["B_Slingload_01_Repair_F"], 150];
_box = _boxArray select 0;
removeAllActions _box;
	
// Create LZ Helipad for landing
_LZPad = createVehicle["Land_HelipadEmpty_F",_LZPos,[],0,"NONE"];
	
// Create group data
_EagleCrew = createGroup west;
_EagleTeam = createGroup west;
_EagleTeam2 = createGroup west;
_EagleTeam3 = createGroup west;
_EagleTeam4 = createGroup west;
_EagleTeam5 = createGroup west;
_EagleTeam6 = createGroup west;

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
_soldier3 = _EagleTeam3 createUnit [_unit,_TakeOffPos,[],0,"private"];
_soldier4 = _EagleTeam4 createUnit [_unit,_TakeOffPos,[],0,"private"];
_soldier5 = _EagleTeam5 createUnit [_unit,_TakeOffPos,[],0,"private"];
_soldier6 = _EagleTeam6 createUnit [_unit,_TakeOffPos,[],0,"private"];
//[_soldier, "SOL"] call Fnc_StoreUnit;

// Load ground units into cargo of chopper
_soldier assignAsCargo _EagleChopper;
_soldier moveInCargo _EagleChopper;
_soldier2 assignAsCargo _EagleChopper;
_soldier2 moveInCargo _EagleChopper;
_soldier3 assignAsCargo _EagleChopper;
_soldier3 moveInCargo _EagleChopper;
_soldier4 assignAsCargo _EagleChopper;
_soldier4 moveInCargo _EagleChopper;
_soldier5 assignAsCargo _EagleChopper;
_soldier5 moveInCargo _EagleChopper;
_soldier6 assignAsCargo _EagleChopper;
_soldier6 moveInCargo _EagleChopper;
	
// Assign flight altitude
_EaglePilot flyInHeight 50;

// Protect flight assets to prevent bugs
_EagleChopper allowDamage false;
_EaglePilot allowDamage false;
_soldier allowDamage false;
_soldier2 allowDamage false;
_soldier3 allowDamage false;
_soldier4 allowDamage false;
_soldier5 allowDamage false;
_soldier6 allowDamage false;

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

_wp1_2 = _EagleTeam3 addWaypoint [_LZPos, 1];
_wp1_2 = [_EagleTeam3, 1] setWaypointType "GETOUT";
_wp1_2 = [_EagleTeam3, 1] setWaypointFormation "WEDGE";
_wp1_2 = [_EagleTeam3, 1] setWaypointCombatMode "RED";
_wp1_2 = [_EagleTeam3, 1] setWaypointBehaviour "AWARE";
_wp1_2 = [_EagleTeam3, 1] SetWaypointSpeed "NORMAL";

_wp1_3 = _EagleTeam4 addWaypoint [_LZPos, 1];
_wp1_3 = [_EagleTeam4, 1] setWaypointType "GETOUT";
_wp1_3 = [_EagleTeam4, 1] setWaypointFormation "WEDGE";
_wp1_3 = [_EagleTeam4, 1] setWaypointCombatMode "RED";
_wp1_3 = [_EagleTeam4, 1] setWaypointBehaviour "AWARE";
_wp1_3 = [_EagleTeam4, 1] SetWaypointSpeed "NORMAL";

_wp1_4 = _EagleTeam5 addWaypoint [_LZPos, 1];
_wp1_4 = [_EagleTeam5, 1] setWaypointType "GETOUT";
_wp1_4 = [_EagleTeam5, 1] setWaypointFormation "WEDGE";
_wp1_4 = [_EagleTeam5, 1] setWaypointCombatMode "RED";
_wp1_4 = [_EagleTeam5, 1] setWaypointBehaviour "AWARE";
_wp1_4 = [_EagleTeam5, 1] SetWaypointSpeed "NORMAL";

_wp1_5 = _EagleTeam6 addWaypoint [_LZPos, 1];
_wp1_5 = [_EagleTeam6, 1] setWaypointType "GETOUT";
_wp1_5 = [_EagleTeam6, 1] setWaypointFormation "WEDGE";
_wp1_5 = [_EagleTeam6, 1] setWaypointCombatMode "RED";
_wp1_5 = [_EagleTeam6, 1] setWaypointBehaviour "AWARE";
_wp1_5 = [_EagleTeam6, 1] SetWaypointSpeed "NORMAL";
	
// Sync unload waypoints to ensure cargo is disembarked before chopper lifts
[_EagleCrew, 1] synchronizeWaypoint [[_EagleTeam, 1]];
[_EagleCrew, 1] synchronizeWaypoint [[_EagleTeam2, 1]];
[_EagleCrew, 1] synchronizeWaypoint [[_EagleTeam3, 1]];
[_EagleCrew, 1] synchronizeWaypoint [[_EagleTeam4, 1]];
[_EagleCrew, 1] synchronizeWaypoint [[_EagleTeam5, 1]];
[_EagleCrew, 1] synchronizeWaypoint [[_EagleTeam6, 1]];

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

_wp2_2 = _EagleTeam3 addWaypoint [_TargetPos3, 2];
_wp2_2 = [_EagleTeam3, 2] setWaypointType "MOVE";
_wp2_2 = [_EagleTeam3, 2] setWaypointFormation "WEDGE";
_wp2_2 = [_EagleTeam3, 2] setWaypointCombatMode "YELLOW";
_wp2_2 = [_EagleTeam3, 2] setWaypointBehaviour "SAFE";
_wp2_2 = [_EagleTeam3, 2] SetWaypointSpeed "NORMAL";

_wp2_3 = _EagleTeam4 addWaypoint [_TargetPos4, 2];
_wp2_3 = [_EagleTeam4, 2] setWaypointType "MOVE";
_wp2_3 = [_EagleTeam4, 2] setWaypointFormation "WEDGE";
_wp2_3 = [_EagleTeam4, 2] setWaypointCombatMode "YELLOW";
_wp2_3 = [_EagleTeam4, 2] setWaypointBehaviour "SAFE";
_wp2_3 = [_EagleTeam4, 2] SetWaypointSpeed "NORMAL";

_wp2_4 = _EagleTeam5 addWaypoint [_TargetPos5, 2];
_wp2_4 = [_EagleTeam5, 2] setWaypointType "MOVE";
_wp2_4 = [_EagleTeam5, 2] setWaypointFormation "WEDGE";
_wp2_4 = [_EagleTeam5, 2] setWaypointCombatMode "YELLOW";
_wp2_4 = [_EagleTeam5, 2] setWaypointBehaviour "SAFE";
_wp2_4 = [_EagleTeam5, 2] SetWaypointSpeed "NORMAL";

_wp2_5 = _EagleTeam6 addWaypoint [_TargetPos6, 2];
_wp2_5 = [_EagleTeam6, 2] setWaypointType "MOVE";
_wp2_5 = [_EagleTeam6, 2] setWaypointFormation "WEDGE";
_wp2_5 = [_EagleTeam6, 2] setWaypointCombatMode "YELLOW";
_wp2_5 = [_EagleTeam6, 2] setWaypointBehaviour "SAFE";
_wp2_5 = [_EagleTeam6, 2] SetWaypointSpeed "NORMAL";
	
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
_lzPacked = createVehicle ["Land_Pallet_MilBoxes_F",_TargetPos,[],0,"NONE"];
_bladderPacked = createVehicle ["Land_Pallet_MilBoxes_F",_TargetPos2,[],0,"NONE"];
_sockPacked = createVehicle ["Land_Pallet_MilBoxes_F",_TargetPos3,[],0,"NONE"];
_gpuPacked = createVehicle ["Land_Pallet_MilBoxes_F",_TargetPos4,[],0,"NONE"];
_resupPacked = createVehicle ["Land_Pallet_MilBoxes_F",_TargetPos5,[],0,"NONE"];
_waterPacked = createVehicle ["Land_Pallet_MilBoxes_F",_TargetPos6,[],0,"NONE"];

// Anims
[_soldier,"KNEEL_TREAT","FULL"] call BIS_fnc_ambientAnim;
[_soldier2,"KNEEL_TREAT","FULL"] call BIS_fnc_ambientAnim;
[_soldier3,"KNEEL_TREAT","FULL"] call BIS_fnc_ambientAnim;
[_soldier4,"KNEEL_TREAT","FULL"] call BIS_fnc_ambientAnim;
[_soldier5,"KNEEL_TREAT","FULL"] call BIS_fnc_ambientAnim;
[_soldier6,"KNEEL_TREAT","FULL"] call BIS_fnc_ambientAnim;

// Sleep delay
sleep 300;

[_soldier,"KNEEL","FULL",{true}] call BIS_fnc_ambientAnimCombat;
[_soldier2,"KNEEL","FULL",{true}] call BIS_fnc_ambientAnimCombat;
[_soldier3,"KNEEL","FULL",{true}] call BIS_fnc_ambientAnimCombat;
[_soldier4,"KNEEL","FULL",{true}] call BIS_fnc_ambientAnimCombat;
[_soldier5,"KNEEL","FULL",{true}] call BIS_fnc_ambientAnimCombat;
[_soldier6,"KNEEL","FULL",{true}] call BIS_fnc_ambientAnimCombat;

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

_wp4_2 = _EagleTeam3 addWaypoint [_Dispersal, 3];
_wp4_2 = [_EagleTeam3, 3] setWaypointType "MOVE";
_wp4_2 = [_EagleTeam3, 3] setWaypointFormation "WEDGE";
_wp4_2 = [_EagleTeam3, 3] setWaypointCombatMode "YELLOW";
_wp4_2 = [_EagleTeam3, 3] setWaypointBehaviour "SAFE";
_wp4_2 = [_EagleTeam3, 3] SetWaypointSpeed "NORMAL";
[_EagleTeam3, 3] waypointAttachObject _building;
[_EagleTeam3, 3] setWaypointHousePosition 3;

_wp4_3 = _EagleTeam4 addWaypoint [_Dispersal, 3];
_wp4_3 = [_EagleTeam4, 3] setWaypointType "MOVE";
_wp4_3 = [_EagleTeam4, 3] setWaypointFormation "WEDGE";
_wp4_3 = [_EagleTeam4, 3] setWaypointCombatMode "YELLOW";
_wp4_3 = [_EagleTeam4, 3] setWaypointBehaviour "SAFE";
_wp4_3 = [_EagleTeam4, 3] SetWaypointSpeed "NORMAL";
[_EagleTeam4, 3] waypointAttachObject _building;
[_EagleTeam4, 3] setWaypointHousePosition 4;

_wp4_4 = _EagleTeam5 addWaypoint [_Dispersal, 3];
_wp4_4 = [_EagleTeam5, 3] setWaypointType "MOVE";
_wp4_4 = [_EagleTeam5, 3] setWaypointFormation "WEDGE";
_wp4_4 = [_EagleTeam5, 3] setWaypointCombatMode "YELLOW";
_wp4_4 = [_EagleTeam5, 3] setWaypointBehaviour "SAFE";
_wp4_4 = [_EagleTeam5, 3] SetWaypointSpeed "NORMAL";
[_EagleTeam5, 3] waypointAttachObject _building;
[_EagleTeam5, 3] setWaypointHousePosition 5;

_wp4_5 = _EagleTeam6 addWaypoint [_Dispersal, 3];
_wp4_5 = [_EagleTeam6, 3] setWaypointType "MOVE";
_wp4_5 = [_EagleTeam6, 3] setWaypointFormation "WEDGE";
_wp4_5 = [_EagleTeam6, 3] setWaypointCombatMode "YELLOW";
_wp4_5 = [_EagleTeam6, 3] setWaypointBehaviour "SAFE";
_wp4_5 = [_EagleTeam6, 3] SetWaypointSpeed "NORMAL";
[_EagleTeam6, 3] waypointAttachObject _building;
[_EagleTeam6, 3] setWaypointHousePosition 2;

sleep 10;

// Model finished product
deleteVehicle _lzPacked;
deleteVehicle _bladderPacked;
deleteVehicle _sockPacked;
deleteVehicle _gpuPacked;
deleteVehicle _resupPacked;
deleteVehicle _waterPacked;

sleep 2;

_lzPacked_1 = createVehicle ["Land_HelipadSquare_F",_TargetPos,[],0,"NONE"];
_lzPacked_1 setDir 90;

_bladderPacked_1 = createVehicle ["StorageBladder_01_fuel_sand_F",_TargetPos2,[],0,"NONE"];
_bladderPacked_1 setDir 0;

_sockPacked_1 = createVehicle ["Windsock_01_F",_TargetPos3,[],0,"NONE"];
_sockPacked_1 setDir 0;

_gpuPacked_1 = createVehicle ["Land_DieselGroundPowerUnit_01_F",_TargetPos4,[],0,"NONE"];
_gpuPacked_1 setDir 0;

_resupPacked_1 = createVehicle ["UK3CB_BAF_Box_Helicopter_Resupply",_TargetPos5,[],0,"NONE"];
_resupPacked_1 setDir 0;

_waterPacked_1 = createVehicle ["Land_WaterTank_F",_TargetPos6,[],0,"NONE"];
_waterPacked_1 setDir 0;

// create service station trigger
_serviceTrigger = createTrigger ["EmptyDetector", _TargetPos];
_serviceTrigger setTriggerArea [7, 7, 0, false];
_serviceTrigger setTriggerActivation ["ANY", "PRESENT", true];
_serviceTrigger setTriggerTimeout [4, 4, 4, false];
_serviceTrigger setTriggerType "SWITCH";
_serviceTrigger setTriggerStatements ["{((_x isKindOf 'Air' || _x isKindOf 'LandVehicle') and ((getPosATL _x) select 2) < 1)} count thisList == 1;", "null = [(list thisTrigger), ThisTrigger] spawn GOL_Fnc_ServiceStation;", ""];

sleep 300;

deleteVehicle _soldier;
deleteVehicle _soldier2;
deleteVehicle _soldier3;
deleteVehicle _soldier4;
deleteVehicle _soldier5;
deleteVehicle _soldier6;
