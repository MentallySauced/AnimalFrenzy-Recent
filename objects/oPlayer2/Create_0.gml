/// @description Insert description here
// You can write your code in this editor

dir = 1;
jumping = true;

g = 0.8;  // gravity applied
grav = 0; 
gravMax = 14;  // max falling speed
gravDelta = 1.8;
gravJump = -35;  // jump gravity

hp = 100;  
hpMax = 100; 

hSpeed = 0;
walkSpeed = 8;

knockback_speed = 5;

state = PLAYER2STATE.IDLE;
hitByAttack = ds_list_create();

enum PLAYER2STATE {
	IDLE,
	ATTACK,
	HIT,
	DEAD
}
