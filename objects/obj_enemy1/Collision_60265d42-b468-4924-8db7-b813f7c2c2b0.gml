/// @description Insert description here
// You can write your code in this editor

if (--hp == 0) {
	instance_destroy();
	audio_play_sound(snd_explosion, 20, false);
	instance_destroy(bulletPatternObj);
	obj_status.levelProgress += 100 / 13;
	spawnBuff()
}

