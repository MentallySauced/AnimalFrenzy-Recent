/// @description Creation code with variables
// You can write your code in this editor

dir = 1;
jumping = true;

g = 0.8;  // gravity applied
grav = 0; 
gravMax = 14;  // max falling speed
gravDelta = 1.8;
gravJump = -35;  // jump gravity

hp = 100;  // health of player1
hpMax = 100;  // max health of player1
hSpeed = 0;

walkSpeed = 8;

knockback = 105;

state = PLAYER1STATE.IDLE;
hitByAttack = ds_list_create();


enum PLAYER1STATE {
	IDLE,
	ATTACK,
	HIT,
	DEAD
}
