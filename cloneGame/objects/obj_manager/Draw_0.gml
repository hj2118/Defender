/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_color(c_yellow);

if (room == rm_game) {
	draw_set_halign(fa_left);
	draw_set_font(ft_arcade_24);
	draw_text(camera_get_view_x(view_camera[0]) + 20, 20, "score: " + string(SCORE));

	if (PLAYER_LIVES > 0) {
		draw_sprite(spr_lives, 0, camera_get_view_x(view_camera[0]) + 45, 50);
		
		if (PLAYER_LIVES > 1) {
			draw_sprite(spr_lives, 0, camera_get_view_x(view_camera[0]) + 45, 70);
		}
		
		if (PLAYER_LIVES > 2) {
			draw_sprite(spr_lives, 0, camera_get_view_x(view_camera[0]) + 45, 90);
		}
	}
	
	if (BOMBS > 0) {
		draw_sprite(spr_bomb, 0, camera_get_view_x(view_camera[0]) + 100, 50);
		
		if (BOMBS > 2) {
			draw_sprite(spr_bomb, 0, camera_get_view_x(view_camera[0]) + 100, 70);
		}
		
		if (BOMBS > 4) {
			draw_sprite(spr_bomb, 0, camera_get_view_x(view_camera[0]) + 100, 90);
		}
	}
}

if (room == rm_over) {
	draw_set_font(ft_arcade_36);
	draw_text(room_width / 2, room_height / 2 - 110, "game over");
	draw_set_font(ft_arcade_24);
	draw_text(room_width / 2, room_height / 2, "score : " + string(SCORE));
	draw_text(room_width / 2, room_height / 2 + 100, "space bar to play again");
}

if (room == rm_complete) {
	draw_set_font(ft_arcade_36);
	draw_text(room_width / 2, room_height / 2 - 110, "game complete");
	//draw_set_font(ft_matura_24);
	draw_text(room_width / 2, room_height / 2, "score: " + string(SCORE));
	draw_text(room_width / 2, room_height / 2 + 100, "space bar to play again");
}


if (room == rm_start) {
	draw_set_font(ft_classic_100);
	draw_set_color(#FAF15F);
	draw_text(room_width / 2, 130, "DEFENDER");
	
	draw_set_font(ft_arcade_24);
	draw_set_color(#F55B53);
	draw_text(room_width / 2, 450, "Press space to continue");
}

if (room == rm_howto) {
	draw_set_font(ft_classic_100);
	draw_set_color(#FAF15F);
	draw_text(room_width / 2, 130, "DEFENDER");
	
	draw_set_halign(fa_left);
	draw_set_font(ft_arcade_24);
	
	draw_set_color(#F55B53);
	draw_set_halign(fa_center);
	draw_text(room_width / 2, 270, "-------------------------------------------------------------");
	
	draw_set_halign(fa_left);
	draw_text(310, 350, "Arrow keys - Move");
	draw_text(310, 400, "Shift - Stop vertical motion");
	draw_text(310, 450, "Spc - Fire laser");
	draw_text(310, 500, "Ctrl - Smart bomb");
	draw_text(310, 550, "Press G to play");
}