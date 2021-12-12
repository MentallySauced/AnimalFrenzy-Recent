// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DealDmgTo1(){
	var _damage = argument[0];
	
	oPlayer1.hp -= _damage;
	
	if (oPlayer1.hp > 0) {
		oPlayer1.knockback_speed = knockback;
		oPlayer1.state = PLAYER1STATE.HIT;
		hitNow = true;
	} else {
		state = PLAYER1STATE.DEAD;
	}
	
}