/// @description Insert description here
// You can write your code in this editor

x += x_spd;


if (abs(x - startX) > 800) {
	instance_destroy();
}

else {
	MakeParticles(x, y);
}

if (x < LEFTEDGE) {
	x += sprite_get_width(spr_background);
}

if (x > RIGHTEDGE) {
	x -= sprite_get_width(spr_background);
}


