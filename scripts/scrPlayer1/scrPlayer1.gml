function scrPlayer1(){
	keyLeft = keyboard_check(ord("A"));
	keyRight = keyboard_check(ord("D"));
	keyUp = keyboard_check(ord("W"));
	keyAttack = keyboard_check(ord("F"));
	
	switch (state) {
		case PLAYER1STATE.IDLE: Player1State_Idle(); break;
		case PLAYER1STATE.ATTACK: Player1State_Attack(); break;
		//case PLAYER1STATE.HIT: Player1State_Hit(); break;
		case PLAYER1STATE.DEAD: Player1State_Dead(); break;
	}
	
	
	
}