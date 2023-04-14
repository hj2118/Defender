/// @description Insert description here
// You can write your code in this editor


//if (THROWBOMB) {
//	if (x >=  camera_get_view_x(view_camera[0])) && (x < camera_get_view_x(view_camera[0]) + window_get_width()) {
//		instance_destroy();
//	}
	
//	THROWBOMB = false;
//	BOMBS--;
//}

//distanceX = distance_to_object(obj_player);

//if (distanceX <= maxDistance) {
if (x >=  camera_get_view_x(view_camera[0])) && (x < camera_get_view_x(view_camera[0]) + window_get_width()) {
	toBeDestroyed = true;
}

else {
	toBeDestroyed = false;
}

if (toBeDestroyed && THROWBOMB) {
	instance_destroy(self);
}

if (x < LEFTEDGE) {
	x += sprite_get_width(spr_background);
}

if (x > RIGHTEDGE) {
	x -= sprite_get_width(spr_background);
}


