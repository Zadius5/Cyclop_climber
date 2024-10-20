/// @description Insert description here
// You can write your code in this editor

audio_play_sound(snd_lead_synth_only, 10, true);

audio_sound_gain(snd_drums_only, 0.0, 0);
audio_play_sound(snd_drums_only, 9, true, 0.0);

audio_sound_gain(snd_orchestra_only, 0.0, 0);
audio_play_sound(snd_orchestra_only, 8, true, 0.0);

audio_sound_gain(snd_xylophone_only, 0.0, 0);
audio_play_sound(snd_xylophone_only, 7, true, 0.0);