// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MakeDust(_x1, _x2, _y, _amt){
	for (i = 0; i < _amt; i++) {
		instance_create_depth(irandom_range(_x1, _x2), irandom_range(_y - 50, _y), 0, obj_dust)
	}
}