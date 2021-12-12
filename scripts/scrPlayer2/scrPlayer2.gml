function scrPlayer2(){
	keyLeft = keyboard_check(vk_left);
	keyRight = keyboard_check(vk_right);
	keyUp = keyboard_check(vk_up);
	keyAttack = keyboard_check(ord("M"));
	
	switch (state) {
		case PLAYER2STATE.IDLE: Player2State_Idle(); break;
		case PLAYER2STATE.ATTACK: Player2State_Attack(); break;
		//case PLAYER2STATE.HIT: Player2State_Hit(); break;
		case PLAYER2STATE.DEAD: Player2State_Dead(); break;
	}
}