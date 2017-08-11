/*
 * Script to act as an interface between addAction and spawning objects on server
 *
 */
 
 _IncomingAction = _this select 3 select 0;
 
 switch (_IncomingAction) do
{
	case "medical":
	{	
		[[[], {_this execVM "Scripts\FARP\FieldHospital.sqf"}], "BIS_FNC_SPAWN", false] call BIS_FNC_MP;
	};
	
	case "repair":
	{	
		[[[], {_this execVM "Scripts\FARP\FieldRepairStation.sqf"}], "BIS_FNC_SPAWN", false] call BIS_FNC_MP;
	};
	
	case "fortify":
	{	
		[[[], {_this execVM "Scripts\FARP\Fortifications.sqf"}], "BIS_FNC_SPAWN", false] call BIS_FNC_MP;
	};
	
	default
	{
		hint "Check Code Session Not Recognised";
	};
};