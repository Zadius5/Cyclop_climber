/// @description Insert description here
// You can write your code in this editor
if(!ended){
alarm[0] = 60 * 5
instance_create_layer(x,y,"player_layer",bloodofthedarksoul)
ended = true
giant.alive = false
player.control = false
timer.over = true
audio_play_sound(roar_sound_effect,0,false)
}
