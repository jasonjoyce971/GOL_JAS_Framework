
switch (_side) do {
	case "AAF-W": {
		#include "Classes\AAF-W.sqf"
	};
	case "BAF-D": {
		#include "Classes\BAF-D.sqf"
	};
	case "CAMPAIGN-E": {
		#include "Classes\CAMPAIGN-E.sqf"
	};
	case "CAMPAIGN-I": {
		#include "Classes\CAMPAIGN-I.sqf"
	};
	case "CAMPAIGN-W": {
		#include "Classes\CAMPAIGN-W.sqf"
	};
	case "CSAT-H": {
		#include "Classes\CSAT-H.sqf"
	};
	case "CSAT-W": {
		#include "Classes\CSAT-W.sqf"
	};
	case "CSAT-U": {
		#include "Classes\CSAT-U.sqf"
	};
	case "INSURGENT-D": {
		#include "Classes\INSURGENT-D.sqf"
	};
	case "INSURGENT-W": {
		#include "Classes\INSURGENT-W.sqf"
	};
	case "NATO-D": {
		#include "Classes\NATO-D.sqf"
	};
	case "NATO-W": {
		#include "Classes\NATO-W.sqf"
	};
	case "PMC": {
		#include "Classes\PMC.sqf"
	};
	case "RUSSIAN-W": {
		#include "Classes\RUSSIAN-W.sqf"
	};
	case "TAKIARMY-D": {
		#include "Classes\TAKIARMY-D.sqf"
	};
	case "USMC-D": {
		#include "Classes\USMC-D.sqf"
	};
	case "USMC-W": {
		#include "Classes\USMC-W.sqf"
	};
	
	case "CSAT-V":
	{
		#include "Classes\CSAT-V.sqf"
	};
	case "SWAT":
	{
		#include "Classes\SWAT.sqf"
	};
	case "SPETSNAZ":
	{
		#include "Classes\Spetsnaz.sqf"
	};
	case "NATO-CTRG":
	{
		#include "Classes\CTRG.sqf"
	};
	case "SAS":
	{
		#include "Classes\SAS.sqf"
	};
	case "MARSOC":
	{
		#include "Classes\MARSOC.sqf"
	};
	case "ACR":
	{
		#include "Classes\ACR.sqf"
	};
	case "601stSFG":
	{
		#include "Classes\601stSFG.sqf";
	};
	case "CDF-D":
	{
		#include "Classes\CDF-D.sqf";
	};
	case "CDF-F":
	{
		#include "Classes\CDF-F.sqf";
	};
	case "CDF-M":
	{
		#include "Classes\CDF-M.sqf";
	};
	case "US-OCP":
	{
		#include "Classes\US-OCP.sqf";
	};
	case "US-UCP":
	{
		#include "Classes\US-UCP.sqf";
	};
	case "US-R":
	{
		#include "Classes\US-R.sqf";
	};
	case "SLA":
	{
		#include "Classes\SLA.sqf";
	};
	case "SYND":
	{
		#include "Classes\SYND.sqf";
	};
	case "UN":
	{
		#include "Classes\UN.sqf";
	};
	case "CAMPAIGN-601":
	{
		#include "Classes\CAMP601stSFG.sqf";
	};
	case "CAMPAIGN-AAF":
	{
		#include "Classes\CAMPAAF.sqf";
	};
	case "CAMPAIGN-RACS":
	{
		#include "Classes\CAMPRACS.sqf";
	};
	case "CAMPAIGN-CDF":
	{
		#include "Classes\CAMPCDF.sqf";
	};
	case "CAMPAIGN-GEORGIA":
	{
		#include "Classes\CAMPGEO.sqf";
	};
	case "CAMPAIGN-SEP":
	{
		#include "Classes\CAMPSEP.sqf";
	};
	case "CAMPAIGN-ACR":
	{
		#include "Classes\CAMPACR.sqf";
	};
	default {
		_errorCode = true;
		ERROR(FORMAT_1("Faction does not exist: %1", _side));
	};
};

/*
	case "UN-D": {
		#include "Classes\UN-D.sqf"
	};

*/
