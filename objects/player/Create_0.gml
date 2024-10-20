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
movement = 6
walking = true
climbing = false
stun = false
control = true
knockback = false
gravity_f = 1
jump_cd = false
x_speed = 0
y_speed = 0
shakes = false
iframe = false
//Animation list
face = LEFT
delay = 0.5
awalk[RIGHT] = noone
awalk[LEFT] = noone
aclimb = noone
max_fall = 10
//all platforming actions of player
function move_h() {
	if(control){
	if(keyboard_check(ord("D"))){
		face = RIGHT
		x_speed = movement
	}
	else if(keyboard_check(ord("A"))){
		face = LEFT
		x_speed = -movement
	}
	}
	if(place_meeting(x+x_speed,y,platform_block)){
		x_speed = 0
	}
}
function jump() {
	if(control){
	if(state != "air" && keyboard_check_pressed(vk_space)){
	state = "air"
	y_speed = -15
	}
	}
}
function climb(){
	if(control){
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
}
function check_ground(){
	if place_meeting(x+x_speed,y+y_speed,platform_block) && y_speed > 0{
		state = "walk"
		shakes = false
	}
	else{
		state = "air"
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
function apply_stun(){
	stun = false
	if(!iframe){
	iframe = true
	control = false
	knockback = true
	switch(state){
		case "walk": 
		if face == RIGHT{
			x_speed = -10
		}
		else{
			x_speed = 10
		}
		break
		case "climb":
		state = "air"
		x_speed = 0
		y_speed = 0
		break
		case "air":
		if face == RIGHT{
			x_speed = -10
		}
		else{
			x_speed = 10
		}
		break
	}
	alarm[0] = 0.25 * 60
	alarm[3] = 0.5 * 60
	}
}