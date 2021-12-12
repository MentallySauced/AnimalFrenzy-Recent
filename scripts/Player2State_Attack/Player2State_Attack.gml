// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Player2State_Attack(){
	hSpeed = 0;
	grav = 0;
	
	if (sprite_index != Cow_Melee_Attack) {
		sprite_index = Cow_Melee_Attack;
		image_index = 0;
		ds_list_clear(hitByAttack);
	}
	
	mask_index = Cow_Melee_AttackHB;
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x, y, oPlayer1, hitByAttackNow, false);
	if (hits > 0) {
		for (var i = 0; i < hits; i++) {
			var hitID = hitByAttackNow[| i];
			if (ds_list_find_index(hitByAttack, hitID) == -1) {
				ds_list_add(hitByAttack, hitID);
				with(hitID) {
					DealDmgTo1(10);
					// audio
					audio_play_sound(damageNoise, 8, false);
				}
			}
		}
	}
	
	ds_list_destroy(hitByAttackNow);
	mask_index = Cow_Idle;
	
	if (AnimationEnd()) {
		sprite_index = Cow_Idle;
		state = PLAYER2STATE.IDLE;
	}
}