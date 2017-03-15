/* 
'fnc_wp_pause' by Madopow2110

Caches waypoints for input group in a variable assigned ot the group

0 = Group(TYPE = GROUP)

USAGE: 

_handle = [(group this)] call fnc_wp_pause;
*/



_grp = _this select 0;
sg_wp_info = [];

{

	_wp = _x;
	_index = (_x select 1);
	_pos = waypointPosition _wp;
	_behaviour = waypointBehaviour _wp;
	_combatMode = waypointCombatMode _wp;
	_completionRadius = waypointCompletionRadius _wp;
	_description = waypointDescription _wp;
	_formation = waypointFormation _wp;
	_speed = waypointSpeed _wp;
	_statements = waypointStatements _wp;
	_timeout = waypointTimeout _wp;
	_type = waypointType _wp;
	
	sg_wp_info = sg_wp_info + [[_index,_pos,_behaviour,_combatMode,_completionRadius,_description,_formation,_speed,_statements,_timeout,_type]];
	
	deleteWaypoint _x;
	
} forEach waypoints _grp;

_grp setVariable ["sg_wp_info",sg_wp_info,true];

sg_wp_info = [];


