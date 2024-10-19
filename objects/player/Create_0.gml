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
gravity_f = 1
x_speed = 0
y_speed = 0
//Animation list
face = LEFT
delay = 0.5
awalk[RIGHT] = noone
awalk[LEFT] = noone
aclimb = noone
max_fall = 10
//all platforming actions of player
function move_h() {
	if(keyboard_check(ord("D"))){
		face = RIGHT
		x_speed = movement
	}
	else if(keyboard_check(ord("A"))){
		face = LEFT
		x_speed = -movement
	}
}
function jump() {
	if(state != "air" && keyboard_check(vk_space)){
	state = "air"
	y_speed = -15
	}
}
function climb(){
	if(keyboard_check(ord("W"))){
		face = RIGHT
		y_speed = -movement
		state = "climb"
	}
	else if(keyboard_check(ord("S"))){
		face = LEFT
		y_speed = movement
		state = "climb"
	}
}
function check_ground(){
	if !place_meeting(x+x_speed,y+y_speed,platform_block) {
		gravity_f = 1
		state = "air"
	}
	else{
		state = "walk"
	}
}
function apply_gravity(){
	if (y_speed < max_fall){
	y_speed += gravity_f
	}
}
function check_climb(){
	return (place_meeting(x,y,climb_object))
}