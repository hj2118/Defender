/// @description Insert description here
// You can write your code in this editor


if (x < LEFTEDGE) {
	x += sprite_get_width(spr_background);
}

if (x > RIGHTEDGE) {
	x -= sprite_get_width(spr_background);
}

