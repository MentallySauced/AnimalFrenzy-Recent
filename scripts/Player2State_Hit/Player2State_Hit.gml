// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Player2State_Hit(){
	image_xscale = -sign(knockback_speed);
	
	x += knockback_speed;
	
	knockback_speed = approach(knockback_speed, 0, 1);
	
	if (knockback_speed == 0) {
		state = PLAYER2STATE.IDLE;
	}
}