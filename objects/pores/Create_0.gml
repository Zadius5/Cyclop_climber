/// @description Insert description here
// You can write your code in this editor
alarm[0] = 60*2
x_dir = 0
y_dir = 0
shoot_dir = 0
function cal_dir(){
	shoot_dir = point_direction(x,y,player.x,player.y) - 90
	x_dir = sin(shoot_dir*pi/180)
	y_dir = cos(shoot_dir*pi/180)
}

