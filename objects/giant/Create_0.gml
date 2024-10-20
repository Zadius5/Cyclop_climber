/// @description Insert description here
// You can write your code in this editor

shake_dir = 1

function steping(){
	player.y_speed -= 30
	player.state = "air"
}

function shake(){
	player.shakes = true
	if (player.state = "walk"){
		player.y_speed = -15
	}
	player.state = "air"
	player.x_speed += 10 * shake_dir
	shake_dir *= -1
	//player.control = false
	//player.alarm[1] = 0.25 * 60
}

//alarm[0] = 60* 5
//alarm[1] = 60* 5