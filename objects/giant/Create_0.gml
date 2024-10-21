/// @description Insert description here
// You can write your code in this editor

shake_dir = 1
alive = true
function steping(){
	audio_play_sound(massive_thump_116359__2_,0,false)
	player.y_speed -= 25
	player.state = "air"
}

function shake(){
	audio_play_sound(massive_thump_116359__2_,0,false)
	player.shakes = true
	if (player.state = "walk"){
		player.y_speed = -5
	}
	player.state = "air"
	//player.x_speed += 10 * shake_dir
	shake_dir *= -1
	player.push_dir = shake_dir
	player.alarm[4] = 60 * 0.5
	//player.control = false
	//player.alarm[1] = 0.25 * 60
}

alarm[0] = 60* 5
alarm[1] = 60* 5