/* 
'fnc_wp_resume' by Madopow2110

Resumes waypoint path cached by 'fnc_wp_pause'

0 = Group(TYPE = GROUP)

USAGE: 

_handle = [(group this)] call fnc_wp_resume;
*/



_grp = _this select 0;
_array = _grp getVariable ["sg_wp_info"];

{

	deleteWaypoint _x;

} forEach (waypoints _grp);

{

	_array = _x;
	_index = (_x select 0);
	_pos = (_x select 1);
	_behaviour = (_x select 2);
	_combatMode = (_x select 3);
	_completionRadius = (_x select 4);
	_description = (_x select 5);
	_formation = (_x select 6);
	_speed = (_x select 7);
	_statements = (_x select 8);
	_timeout = (_x select 9);
	_type = (_x select 10);
	
	_wp = _grp addWaypoint [_pos,_completionRadius,_index];
	_wp setWaypointBehaviour _behaviour;
	_wp setWaypointCombatMode _combatMode;
	_wp setWaypointDescription _description;
	_wp setWaypointFormation _formation;
	_wp setWaypointSpeed _speed;
	_wp setWaypointStatements _statements;
	_wp setWaypointTimeout _timeout;
	_wp setWaypointType _type;
	
} forEach _array;





