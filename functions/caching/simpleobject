/* 
'fnc_cache_simpleobject' by shifty_ginosaji

Transforms normal objects into simple objects

0 = list of classnames (TYPE = ARRAY)

USAGE: 

_handle = [["class1","class2","class3"]] call fnc_cache_simpleobject;
*/

fnc_cache_isHidden = {

	if (!IsServer) exitWith {};
	
	_state = isObjectHidden _obj;
	
	_obj = _this select 0;
	_params = _this select 1;
	_code = compile (_this select 2);
	_state = isObjectHidden _obj;
	
	waitUntil {sleep 10;!_state};
	
	_eh = _params call _code;

};

_list = _this select 0;

{

  if ((typeOf _x) in _list) then {

    _Object = _x;
	_cache = _x getVariable ["sg_cache"];
    _position = getPosWorld _Object;
    _vectorDirUp = [vectorDir _Object, vectorUp _Object];
    _model = getModelInfo _Object select 1;
    deleteVehicle _Object;
    _simpleObject = createSimpleObject [_model, _position];
    _simpleObject setVectorDirAndUp _vectorDirUp;
	if (_cache select 0) then {
	
		_isHiddenEH = [((_cache select 1) select 0),[_simpleObject],"(_this select 0) hideObjectGlobal false;"] spawn fnc_cache_isHidden;
		_simpleObject hideObjectGlobal true;
	
	};

  };

} foreach AllUnits;
