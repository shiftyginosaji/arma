/* 
'fnc_cache_disableList' by shifty_ginosaji

Puts selected objects into cached status

0 = list of objects (TYPE = ARRAY)
1 = whether the list should be deleted (TYPE = BOOLEAN)

USAGE: 

_handle = [varname,boolean] call fnc_cache_disableList;
*/

_list = _this select 0;
_deleteList = _this select 1;

{
	if {_deleteList} then {
	
		deleteVehicle _x;
	
	}
	else
	{
	
		_x enableSimulationGlobal false;
		_x setCaptive true;
		_x hideObjectGlobal true;
		_x disableAI "TARGET";
		_x disableAI "AUTOTARGET";
		_x disableAI "MOVE";
		_x disableAI "ANIM";
		_x disableAI "FSM";
		_x setVariable ["sg_cache",[true,_list],false];
		
	};

} foreach _list;

