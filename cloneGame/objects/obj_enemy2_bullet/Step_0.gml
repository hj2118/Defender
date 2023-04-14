/// @description Insert description here
// You can write your code in this editor

x += enemy_bullet2_xspd
y += enemy_bullet2_yspd

bullet_time++;

if (bullet_time > 600) {
	instance_destroy();	
}


// Inherit the parent event
event_inherited();
