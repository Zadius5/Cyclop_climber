/// @description Insert description here
// You can write your code in this editor

cam_x = player.x - camera_get_view_width(cur_cam)/2
cam_y = player.y - camera_get_view_height(cur_cam)/2

camera_set_view_pos(cur_cam,cam_x,cam_y)