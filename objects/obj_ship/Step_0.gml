/// @player controls
// You can write your code in this editor
if (keyboard_check(ord("A"))) {
	image_angle = image_angle +5;	
}

if (keyboard_check(ord("D"))) {
	image_angle = image_angle -5;	
}

//Moving section to get ship to move forward
if (keyboard_check(ord("W"))) {
	motion_add(image_angle, 0.05);	
}

//code to have ship wrap around the room
move_wrap(true, true, sprite_width/2);

//Code for shooting the bullets

if (keyboard_check_pressed(vk_space)) {
	audio_play_sound(snd_zap, 1, false);
	var inst = instance_create_layer(x, y, "Instances", obj_bullet);
	inst.direction = image_angle;
}

/*
if (mouse_check_button(mb_left)) {
	audio_play_sound(snd_zap, 1, false);
	var inst = instance_create_layer(x, y, "Instances", obj_bullet);
	inst.direction = image_angle;
}
*/