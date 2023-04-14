/// @description Insert description here
// You can write your code in this editor


x += xspd
y += yspd


time++

if (time % 100 == 0) && (!caught) {
	xspd = random_range(-3, 3)
	yspd = random_range(-2, 2)	
}

if (time % 500 == 0) {
	instance_create_depth(x, y, 0, obj_enemy_bullet)
	
	//newEnemyBullet = instance_nearest(x, y, obj_enemy_bullet)
	
	//if isLeft {
	//	newBullet.bullet_spd = -10
	//}else {
	//	newBullet.bullet_spd = 10
	//}
}

if (time % 700 == 0) && (instance_number(obj_enemy) > 0) {
	createEnemy = true;
}

if (createEnemy) {
	instance_create_depth(random_range(0, room_width), random_range(20, room_height - 20), 0, obj_enemy);
	createEnemy = false;
}

//if (collision_circle(x, y, 20, obj_bullet, 0, 0)) {
//	instance_destroy();
//}

if (collision_circle(x, y, 20, obj_particle, 0, 0)) {
	if (caught) {
		caughtHuman.caught = false;	
	}
	
	instance_destroy();
	SCORE += 150;
}
	
if (collision_circle(x, y, 20, obj_human, 0, 0)) {
	caughtHuman = instance_nearest(x, y, obj_human);
	caughtHuman.x = x;
	caughtHuman.y = y + 20;
	caughtHuman.sprite_index = spr_human_caught;
	caught = true;
	caughtHuman.caught = false;
}

if (caught) {
	if instance_exists(caughtHuman) {
		y -= 3;
		
		if (y < 120) {
			caught = false;
			instance_destroy(caughtHuman);
		}
	}
	
	else {
		caught = false;	
	}
}

if (y < 120) {
	y = 120;
}

if (y > room_height - 20) {
	y = room_height - 20;
}


// Inherit the parent event
event_inherited();

