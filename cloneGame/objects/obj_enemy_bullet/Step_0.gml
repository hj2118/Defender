/// @description Insert description here
// You can write your code in this editor

x += enemy_bullet_xspd
y += enemy_bullet_yspd

bullet_time++;

if (bullet_time > 400) {
	instance_destroy();	
}


// Inherit the parent event
event_inherited();


