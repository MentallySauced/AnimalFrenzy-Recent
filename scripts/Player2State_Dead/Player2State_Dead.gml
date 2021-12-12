// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Player2State_Dead(){
	instance_destroy();
	room_goto(ChickenWinScreen);
}