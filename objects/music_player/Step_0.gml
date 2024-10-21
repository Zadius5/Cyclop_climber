/// @description Insert description here
// You can write your code in this editor

if (player.y >= 6666) {
	audio_sound_gain(Drums_Only, 1, 100);
} else {
	audio_sound_gain(Drums_Only, 0, 100);
}

if (player.y >= 5230) {
	audio_sound_gain(Orchestra_Only, 1, 100);
} else {
	audio_sound_gain(Orchestra_Only, 0, 100);
}

if (player.y >= 2850) {
	audio_sound_gain(Xylophone_Only, 1, 100);
} else {
	audio_sound_gain(Xylophone_Only, 0, 100);
}