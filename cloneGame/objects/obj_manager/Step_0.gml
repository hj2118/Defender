/// @description Insert description here
// You can write your code in this editor


if (camera_xCurrent != camera_xEnd) {
	camera_xCurrent = lerp(camera_xCurrent, camera_xEnd, 0.03);
}

if (room == rm_game) {
	gametime++;
	//THROWBOMB = false;

	if (!obj_player.reset) {
		camera_set_view_pos(view_camera[0], camera_xCurrent, 0);

		if (obj_player.isLeft) {
			camera_xEnd = obj_player.x - ((window_get_width() / 6) * 5);
		}

		else {
			camera_xEnd = obj_player.x - 300;
		}	
	
		if (instance_number(obj_enemy) + instance_number(obj_enemy2) <= 0) {
			SCORE += instance_number(obj_human) * 100;
			room_goto(rm_complete);
		}
	
		if (PLAYER_LIVES == 0) {
			gametime = 0;
			room_goto(rm_over);
		}
	}
	
	if (keyboard_check_pressed(vk_control)) && (BOMBS > 0) {
		audio_play_sound(snd_missile, 0, 0);
		THROWBOMB = true;
		BOMBS--;
	}
	
	if (THROWBOMB) {
		BOMBTIME++;
	}
	
	if (BOMBTIME > 0) {
		layer_background_sprite(background_id, spr_background2); 
	}
	
	else {
		layer_background_sprite(background_id, spr_background); 
	}
	
	if (BOMBTIME > 20) {
		THROWBOMB = false;
		BOMBTIME = 0;
	}
	
	if (gametime % 800 == 0) {
		missiletime = true;
	}
	
	else {
		missiletime = false;
	}
	
	if (missiletime) {
		for (i = 0; i < 5; i++) {
			instance_create_depth(0, 0, 0, obj_missile);
		}
	}
}

if ((room == rm_over) || (room == rm_complete)) {
	if (keyboard_check_pressed(vk_space)) {
		room_goto(rm_howto);
		gametime = 0;
		SCORE = 0;
		PLAYER_LIVES = 3;
		BOMBS = 6;
		BOMBTIME = 0;
		THROWBOMB = false;
		missiletime = false;
	}
}

if (room == rm_start) {
	if (keyboard_check_pressed(vk_space)) {
		room_goto(rm_howto);
	}
}

if (room == rm_howto) {
	if (keyboard_check_pressed(ord("G"))) {
		gametime = 0;
		room_goto(rm_game);
	}
}
