// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MakeParticles(_x, _y){
	//for (i = 0; i < 50; i++) {
	//	if (!LEFT) {
	//		instance_create_depth(_x + 50 + i * 20, _y, 0, obj_particle);
	//	}
	//	else {
	//		instance_create_depth(_x - 50 - i * 20, _y, 0, obj_particle);
	//	}
	//}
	
	if (!LEFT) {
		instance_create_depth(_x + 30, _y, 0, obj_particle);
	}
		
	else {
		instance_create_depth(_x - 30, _y, 0, obj_particle);
	}
}