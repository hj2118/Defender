/// @description Insert description here
// You can write your code in this editor

enemy2_time++;

if (abs(obj_player.x - x) < 700) && (abs(obj_player.y - y) < 400) {
	mp_potential_step(obj_player.x, obj_player.y, 10, false);	
}

if (enemy2_time % 500 == 0) {
	instance_create_depth(x, y, 0, obj_enemy2_bullet);
}

//if (time % 1000 == 0) && (instance_number(obj_enemy2) > 0) {
//	instance_create_depth(random_range(0, room_width), random_range(20, room_height - 20), 0, obj_enemy2);
//}

if (collision_circle(x, y, 20, obj_particle, 0, 0)) {
	instance_destroy();
	SCORE += 500;
}

if (y < 120) {
	y = 120;
}

if (y > room_height - 20) {
	y = room_height - 20;
}


// Inherit the parent event
event_inherited();
