//@cAsteroid movement
sprite_index = choose(spr_asteroid_small, spr_asteroid_med, spr_asteroid_huge);

//code to set the asteroids in motion
direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);
speed = 1;

if room == rm_game_2 {
	speed = 1.7;
}
