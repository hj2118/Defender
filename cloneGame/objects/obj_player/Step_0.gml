/// @description Insert description here
// You can write your code in this editor

// keys
// shift: stop vertical motion
// arrow keys

if (keyboard_check_pressed(vk_left)) {
	L_pressed = true;	
	//L_hold = true
}

if (keyboard_check_released(vk_left)) {
	L_pressed = false;	
	//L_hold = false
}

if (keyboard_check_pressed(vk_right)) {
	R_pressed = true;	
}

if (keyboard_check_released(vk_right)) {
	R_pressed = false;	
}

if (keyboard_check_pressed(vk_up)) {
	up_pressed = true;
}

if (keyboard_check_released(vk_up)) {
	up_pressed = false;	
}

if (keyboard_check_pressed(vk_down)) {
	down_pressed = true;
}

if (keyboard_check_released(vk_down)) {
	down_pressed = false;	
}

if (keyboard_check_pressed(vk_shift)) {
	stop_pressed = true;
}

if (keyboard_check_pressed(vk_space)) {
	action_1_pressed = true;
}

if (keyboard_check_released(vk_space)) {
	action_1_pressed = false;
}

//if (keyboard_check_pressed(vk_control)) {
//	action_2_pressed = true;
//}

//if (keyboard_check_released(vk_control)) {
//	action_2_pressed = false;
//}

if (isLeft) {
	x -= hspd;
}

else {
	x += hspd;
}

y += vspd;

if (L_pressed) {
	if (isLeft) {
		if (spdGear == 0) {
			spdGear = 1;
		}
		
		else if (spdGear == 1) {
			spdGear = 2;
		}
		
		else if (spdGear == 2) {
			spdGear = 3;
		}
	}
	
	else {
		if (spdGear == 0) {
			isLeft = true;
			spdGear = 1;
		}
		
		else if (spdGear == 1) {
			spdGear = 0;
		}
		
		else if (spdGear == 2) {
			spdGear = 1;
		}
		
		else if (spdGear == 3) {
			spdGear = 2;
		}
	}
}

if (spdGear == 3) {
	sprite_index = spr_player_boost;
}

else {
	sprite_index = spr_player;
}

if (R_pressed) {
	if (isLeft) {
		if (spdGear == 0) {
			isLeft = false;
			//CHANGEDIRECTION = true;
		}
		
		else if (spdGear == 1) {
			spdGear = 0;
		}
		
		else if (spdGear == 2) {
			spdGear = 1;
		}
		
		else if (spdGear == 3) {
			spdGear = 2;
		}
	}
	
	else {
		if (spdGear == 2) {
			spdGear = 3;
		}
		
		if (spdGear == 1) {
			spdGear = 2;
		}
		
		if (spdGear == 0) {
			spdGear = 1;
		}
	}
}


if (spdGear == 0) {
	hspd = 0;
}
	
else if (spdGear == 1) {
	hspd = spd1;
}
	
else if (spdGear == 2) {
	hspd = spd2;
}
	
else if (spdGear == 3) {
	hspd = spd3;
}
	
if (down_pressed) {
	vspd = 5;
}

if (up_pressed) {
	vspd = -5;
}

if (stop_pressed) {
	vspd = 0;
	stop_pressed = false;
}

L_pressed = false;
R_pressed = false;
//CHANGEDIRECTION = false;


// collision
if (collision_circle(x, y, 20, obj_enemy, 0, 0)) {
	reset = true;
}

if (collision_circle(x, y, 20, obj_enemy2, 0, 0)) {
	reset = true;
}

if (collision_circle(x, y, 20, obj_enemy_bullet, 0, 0)) {
	reset = true;
}

if (collision_circle(x, y, 20, obj_enemy2_bullet, 0, 0)) {
	reset = true;
}

if (collision_circle(x, y, 20, obj_missile, 0, 0)) {
	reset = true;
}

if (action_1_pressed) {
	audio_play_sound(snd_attack, 0, 0);
	
	//MakeParticles(x, y);
	instance_create_depth(x, y, 0, obj_playerBullet);
	
	//if (isLeft) {
	//	//obj_particle.x_spd = -10;
	//	//obj_playerBullet.x_spd = -20;
	//	LEFT = true;
	//}
	
	//else {
	//	//obj_particle.x_spd = 10;
	//	//obj_playerBullet.x_spd = 20;
	//	LEFT = false;
	//}
	
	//instance_create_depth(x, y, 0, obj_bullet);
	
	//newBullet = instance_nearest(x,y,obj_bullet);
	
	//if (isLeft) {
	//	newBullet.bullet_spd = -10;
	//}
	
	//else {
	//	newBullet.bullet_spd = 10;
	//}
}

//if (action_2_pressed) && (BOMBS > 0) {
//	THROWBOMB = true;	
//}

action_2_pressed = false;

if (reset) {
	audio_play_sound(snd_gameover, 0, 0);
	
	L_pressed = false;
	R_pressed = false;
	down_pressed = false;
	up_pressed = false;
	stop_pressed = false;
	action_1_pressed = false;
	action_2_pressed = false;
	
	x = 1100;
	y = room_height / 2;
	
	hspd = 0;
	vspd = 0;
	
	spdGear = 0;
	isLeft = false;
	
	reset = false;
	
	PLAYER_LIVES--;
}

if (isLeft) {
	image_xscale = -1;
} 

else{
	image_xscale = 1;
}

if (y < 120) {
	y = 120;
}

if (y > room_height - 20) {
	y = room_height - 20;
}

//move_wrap(true, false, 0);
//if (x < 20) {
//	x += room_width;
//}

//if (x > room_width - 20) {
//	x -= room_width;
//}

if (x < LEFTEDGE) {
	x += sprite_get_width(spr_background);
	obj_manager.camera_xCurrent += sprite_get_width(spr_background);
	obj_manager.camera_xEnd += sprite_get_width(spr_background);
}

if (x > RIGHTEDGE) {
	x -= sprite_get_width(spr_background);
	obj_manager.camera_xCurrent -= sprite_get_width(spr_background);
	obj_manager.camera_xEnd -= sprite_get_width(spr_background);
}


// Inherit the parent event
event_inherited();

