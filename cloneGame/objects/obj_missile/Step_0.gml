/// @description Insert description here
// You can write your code in this editor

x += xspd;
y += yspd;
yspd += grav;

if (y > room_height) {
	audio_play_sound(snd_missile, 0, 0);
	MakeDust(x - 70, x + 70, room_height, yspd * 3);
	instance_destroy(self);
}


// Inherit the parent event
event_inherited();
