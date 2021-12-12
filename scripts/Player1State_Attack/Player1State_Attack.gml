// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Player1State_Attack(){
	hSpeed = 0;
	grav = 0;
	
	if (sprite_index != Chicken_Melee_Attack1) {
		sprite_index = Chicken_Melee_Attack1;
		image_index = 0;
		ds_list_clear(hitByAttack);
	}
	
	mask_index = Chicken_Melee_AttackHB1;
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x, y, oPlayer2, hitByAttackNow, false);
	if (hits > 0) {
		for (var i = 0; i < hits; i++) {
			var hitID = hitByAttackNow[| i];
			if (ds_list_find_index(hitByAttack, hitID) == -1) {
				ds_list_add(hitByAttack, hitID);
				with(hitID) {
					DealDmgTo2(10);
					// audio
					audio_play_sound(damageNoise, 8, false);
				}
			}
		}
	}
	
	ds_list_destroy(hitByAttackNow);
	mask_index = Chicken_Idle1;
	
	if (AnimationEnd()) {
		sprite_index = Chicken_Idle1;
		state = PLAYER1STATE.IDLE;
	}
}