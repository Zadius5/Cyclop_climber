/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(player) < 2000){
show_debug_message(shoot_dir)
cal_dir()
new_bubble = instance_create_layer(x,y,"player_layer",bubble)
new_bubble.x_speed = new_bubble.max_velocity * -x_dir
new_bubble.y_speed = new_bubble.max_velocity * -y_dir
}
alarm[0] = 60*2