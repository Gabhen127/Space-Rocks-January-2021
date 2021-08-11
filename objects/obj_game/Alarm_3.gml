/// @description Level 2
// You can write your code in this editor

if (room != rm_game_2) {
	exit;
}

if (choose(0, 1) == 0) {
	var xx = choose(0, room_width);
	var yy = irandom_range(0, room_height);
	}
	else {
		var xx = irandom_range(0, room_width);
		var yy = choose(0, room_height);
}

instance_create_layer(xx, yy, "instances", obj_asteroid);
alarm[3] = 8 * room_speed;
