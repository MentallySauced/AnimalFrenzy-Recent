/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(ord("T"))){
	game_restart();
}

if (keyboard_check_pressed(ord("Y"))) {
	audio_pause_sound(backgroundsong);
}

if (keyboard_check_pressed(ord("B"))) {
	oPlayer1.hp += 10;
}

if (keyboard_check_pressed(ord("N"))) {
	oPlayer2.hp += 10;
}
