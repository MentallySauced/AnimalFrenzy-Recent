// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DealDmgTo2(){
	var _damage = argument[0];
	
	oPlayer2.hp -= _damage;
	
	if (oPlayer2.hp > 0) {
		oPlayer2.knockback_speed = knockback;
		oPlayer2.state = PLAYER2STATE.HIT;
		hitNow = true;
	} else {
		state = PLAYER2STATE.DEAD;
	}
	
}