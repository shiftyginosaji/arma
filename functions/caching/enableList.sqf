/* 
'fnc_cache_enableList' by shifty_ginosaji

Takes selected objects out of cached status

0 = list of objects (TYPE = ARRAY)

USAGE: 

_handle = [varname] call fnc_cache_enableList;
*/

_list = _this select 0;

{
    _x enableSimulationGlobal true;
    _x setCaptive false;
    _x hideObjectGlobal false;
    _x enableAI "TARGET";
    _x enableAI "AUTOTARGET";
    _x enableAI "MOVE";
    _x enableAI "ANIM";
    _x enableAI "FSM";
	_x setVariable ["sg_cache",[false,_list],false];

} foreach _list;
