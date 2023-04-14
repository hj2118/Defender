/// @description Insert description here
// You can write your code in this editor

//x += x_spd;

particle_time++;

if (particle_time > random_range(5, 30)) {
	instance_destroy();
}

if (x < LEFTEDGE) {
	x += sprite_get_width(spr_background);
}

if (x > RIGHTEDGE) {
	x -= sprite_get_width(spr_background);
}

