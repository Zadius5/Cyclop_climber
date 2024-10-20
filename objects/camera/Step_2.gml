/// @description Insert description here
// You can write your code in this editor
cam_x = player.x - camera_get_view_width(cur_cam)/2
cam_y = player.y - camera_get_view_height(cur_cam)/2

if cam_x <= 0{
	cam_x = 0
}
if cam_y >= room_height - camera_get_view_height(cur_cam){
	cam_y = room_height - camera_get_view_height(cur_cam)
}
camera_set_view_pos(cur_cam,cam_x,cam_y)