/// @description Insert description here
// You can write your code in this editor

//Key inputs

key_down = 0
key_up = 0
key_right = 0
key_left = 0
state = "walk"
walk_speed = 0
climb_speed = 0
movement = 10
walking = true
climbing = false
stun = false
//Animation list
face = LEFT
delay = 0.5

awalk[RIGHT] = noone
awalk[LEFT] = noone
aclimb = noone
//all platforming actions of player
function walk() {
	if(keyboard_check(ord("D"))){
		face = RIGHT
		hspeed = movement
	}
	else if(keyboard_check(ord("A"))){
		face = LEFT
		hspeed = -movement
	}
}
function jump() {
	if(state != "air" && keyboard_check(vk_space)){
	state = "air"
	vspeed = 20
	}
}
function climb(){
	if(keyboard_check(ord("W"))){
		face = RIGHT
		vspeed = -movement
		state = "climb"
	}
	else if(keyboard_check(ord("S"))){
		face = LEFT
		vspeed = movement
		state = "climb"
	}
}
function apply_gravity(){
	if !place_meeting(x,y+movement,platform_block){
		gravity = 0.01
	}
	else{
		state = "walk"
		gravity = 0
	}
}
function check_climb(){
	return (place_meeting(x,y,climb_object))
}