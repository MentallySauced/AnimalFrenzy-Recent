/// @description Insert description here
// You can write your code in this editor

if (attacking) {
	global.p1health = global.p1health - 25;
	audio_play_sound(damageNoise, 10, false);
}