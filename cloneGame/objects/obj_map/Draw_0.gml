/// @description Insert description here
// You can write your code in this editor

draw_sprite(spr_background_map, false, x + 5, y);
x = camera_get_view_x(view_camera[0]) + 400;

draw_set_color(c_green);
draw_rectangle(x, y, x + map_width, y + map_height, true);

for(i = 0; i < array_length_1d(objects_to_draw); i += 2) {
	map_object_index = objects_to_draw[i];
	map_object_color = objects_to_draw[i + 1];
   
	draw_set_color(map_object_color);
   
	for(j = 0; j < instance_number(map_object_index); j++) {
		instance = instance_find(map_object_index, j);
		current_left = instance.bbox_left * scale;
		current_top = instance.bbox_top * scale;
		current_right = instance.bbox_right * scale;
		current_bottom = instance.bbox_bottom * scale;

	    draw_rectangle(x + current_left, y + current_top, x + current_right, y + current_bottom, false);
	}
}

/*
for the background: draw the lower scaled version sprite and place it there

if want the player to be fixed at the center:
- if the enemies and humans are on the left and right then like subtract or add the width of the map
- background: masking
*/


