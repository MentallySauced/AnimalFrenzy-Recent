// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Player2State_Hit(){
	image_xscale = sign(oPlayer1.image_xscale);
	
	x += knockback_speed * sign(oPlayer1.image_xscale);
	
	knockback_speed = lerp(knockback_speed, 0, .1); //approach(knockback_speed, 0, .1)
	
	if (knockback_speed < .5 or knockback_speed > -0.5) {
		state = PLAYER2STATE.IDLE;
	}
}