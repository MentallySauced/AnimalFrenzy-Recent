// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Player2State_Idle(){
	
	hSpeed = (keyRight - keyLeft) * walkSpeed;
	
	// basic Jumping
	y = y+grav;
	grav += gravDelta;
	if (grav >= gravMax) {
		grav = gravMax;
	}
	
	// Jumping and falling
	if (!jumping) {
		if (keyUp){
			grav = gravJump;
			jumping = true;
		}
	}
	if (grav < 0) {
		sprite_index = Cow_Jump1;
	} else {
		if (jumping) {
			sprite_index = Cow_Jump1;
		} else {
			grav = 0;
		}
	}
	
	x += hSpeed;
	
	if (hSpeed != 0) {
		image_xscale = -sign(hSpeed);
		if (sprite_index != Cow_Walk1) {
			image_index = 2;
		}
		sprite_index = Cow_Walk1;
	} else {
		sprite_index = Cow_Idle1;
	}
	
	if (keyAttack) state = PLAYER2STATE.ATTACK;
	
}