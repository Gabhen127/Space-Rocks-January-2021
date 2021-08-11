/// @description bullet with stored ID
// Create a bullet and store its ID in the variable "bullet" 
var bullet2 = instance_create_layer(x, y, "Instances", obj_bullet);
with (bullet2) {
direction = point_direction(x, y, obj_ship.x, obj_ship.y);
speed = 6;
}


if (room == rm_game_2) {
	var bullet2 = instance_create_layer(x, y, "Instances", obj_bullet);
	with (bullet2) {
	direction = point_direction(x, y, obj_ship.x, obj_ship.y);
	speed = 20;
	}
}
alarm[2] = room_speed * 8;