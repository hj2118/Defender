/// @description Insert description here
// You can write your code in this editor

time++;
x += xspd;
y += yspd; 

if (collision_circle(x, y, 20, obj_particle, 0, 0)) {
	instance_destroy();
}

//if (caught) {
//	if (instance_exists(currEnemy)) {
//		x = currEnemy.x;
//		y = currEnemy.y + 20;
//		sprite_index = spr_human_caught;
//	}
	
//	else {
//		caught = false;
//	}
//}

if (time % 400 == 0) {
	xspd = random_range(-2, 2);
	yspd = random_range(-1, 1);
}

if (y > room_height - 20) {
	y = room_height - 20;
}

if (y < startY) {
	if (!caught) {
		y += 2;
		xspd = 0;
		
		if (y > startY) {
			sprite_index = spr_human;
		}
	}
}




// Inherit the parent event
event_inherited();
