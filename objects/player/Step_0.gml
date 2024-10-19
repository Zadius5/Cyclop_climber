/// @description Insert description here
// You can write your code in this editor

apply_gravity()
if(state != "stun"){
	if(check_climb()){
		climb()
	}
	if(state == "climb"){
		gravity = 0
	}
	if(state == "walk"){
		walk()	
	}
	jump()
}