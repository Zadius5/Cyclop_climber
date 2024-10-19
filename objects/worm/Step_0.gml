/// @description Insert description here
// You can write your code in this editor
if(mov_v){
	y_speed = set_speed * dir
}
else{
	x_speed = set_speed * dir
}
if (!stop){
x += x_speed
y += y_speed
moved += x_speed
moved += y_speed
}
if moved >= max_dis || moved <= -max_dis{
	show_debug_message("switch")
	dir *= -1
	moved = 0
	stop = true
	alarm[0] = 60
}
//show_debug_message(dir)