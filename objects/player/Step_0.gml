/// @description Insert description here
// You can write your code in this editor
//show_debug_message(state)
//show_debug_message(y_speed)
//show_debug_message(control)
if(stun){
	apply_stun()
}
//show_debug_message(x_speed)
switch(state){
	case "walk":
		if check_climb(){
			climb()
		}
		check_ground()
		if state == "walk"{
			move_h()
			x += x_speed
			if(!knockback ){
			x_speed = 0
			}
			jump()
		}
	break;
	case "climb":
		if check_climb(){
			climb()
		}
		else{
			check_ground()
		}
		if state == "climb"{
			move_h()
			if !place_meeting(x+x_speed,y+y_speed,platform_block) && !place_meeting(x+2*x_speed,y+2*y_speed,climb_boundary){
				y += y_speed
				x += x_speed
			}
			x_speed = 0
			y_speed = 0
			jump()
		}
	break;
	case "air":
		if check_climb(){
			climb()
		}
		if state == "air"{
			move_h()
			apply_gravity()
			x += x_speed
			if place_meeting(x+x_speed,y+y_speed,platform_block){
			y_speed = 0
			}
			if(!knockback ){
			x_speed = 0
			}
			y += y_speed
			check_ground()
		}
	break;
}

