/// @description score and lives view
// You can write your code in this editor

switch (room) {
	case rm_game:
	draw_text(50, 20, "SCORE: " + string(score));
	draw_text(50, 40, "LIVES: " + string(lives));
	break;
	
	case rm_start:
	var c = c_yellow;
	draw_text_transformed_colour(room_width / 2, 100, "SPACE ROCKS", 3, 3, 0, c, c, c, c, 1);
	
	draw_text(room_width / 2, 200,  @"Score 1,000 points to level 2!
	
	W key: move
	A or D key: change direction
	SPACE: shoot
	
	>>PRESS ENTER TO START<<");
	draw_set_halign(fa_center);	
	break;
	
	//Winning room for completing Level 2
	case rm_win:
	draw_set_halign(fa_center);
	var c = c_lime;
	draw_text_transformed_colour(room_width / 2, 200, "YOU WON!", 3, 3, 0, c, c, c, c, 1);
	
	//Added this new text with message and sizing of 1
	draw_text_transformed_colour(room_width / 2, 250, "YOU HAVE DEFEATED MY BETA GAME!", 1, 1, 0, c, c, c, c, 1);
	draw_text(room_width / 2, 300, "PRESS ENTER TO RESTART");
	draw_set_halign(fa_left);
	break;
	
	//Game over screen
	case rm_gameover:
	draw_set_halign(fa_center);
	var c = c_red;
	draw_text_transformed_colour(room_width / 2, 150, "GAME OVER", 3, 3, 0, c, c, c, c, 1);
	draw_text(room_width / 2, 250, "FINAL SCORE: " + string(score));
	draw_text(room_width / 2, 300, "PRESS ENTER TO RESTART");
	draw_set_halign(fa_left);
	break;
	
	//Level 2 room added
	case rm_game_2:
	draw_text(50, 20, "SCORE: " + string(score));
	draw_text(50, 40, "LIVES: " + string(lives));
	
	break;
}
