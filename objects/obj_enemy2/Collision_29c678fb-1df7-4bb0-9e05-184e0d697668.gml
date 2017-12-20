/// @description Insert description here
// You can write your code in this editor

obj_status.playerHealth -= 25;
instance_destroy();
audio_play_sound(snd_explosion, 20, false);
instance_destroy(bulletPatternObj);
obj_status.levelProgress += 100 / 13;

spawnBuff()