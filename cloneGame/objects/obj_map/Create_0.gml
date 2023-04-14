/// @description Insert description here
// You can write your code in this editor

//https://forum.yoyogames.com/index.php?threads/reusable-automatic-map-minimap.65439/

x = camera_get_view_x(view_camera[0]) + 400;
y = 0;

scale = 0.14;

map_width = round(sprite_get_width(spr_background) * scale);
map_height = round(sprite_get_height(spr_background) * scale);

objects_to_draw = [
   obj_player, c_yellow,
   obj_enemy, c_green,
   obj_enemy2, c_red,
   obj_human, c_yellow,
   obj_missile, c_white
]




