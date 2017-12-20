/// @description Insert description here
// You can write your code in this editor

switch (currentWave) {
	case wave_t.wave1:
		if (!waveInitFlag) {
			obj_status.levelProgress = 0;
			currentWaveInst = instance_create_layer(x, y, "Instances_Enemy_Wave", obj_wave1);
			nextWave = wave_t.wave2;
		}
		waveInitFlag = true;
		break;
	case wave_t.wave2:
		if (!waveInitFlag) {
			currentWaveInst = instance_create_layer(x, y, "Instances_Enemy_Wave", obj_wave2);
			nextWave = wave_t.boss1;
		}
		waveInitFlag = true;
		break;
	case wave_t.boss1:
		if (!waveInitFlag) {
			currentWaveInst = instance_create_layer(x, y, "Instances_Enemy_Wave", obj_wave_boss1);
			nextWave = wave_t.wave1;			// CHANGE THIS????? @todo
		}
		waveInitFlag = true;
		break;
	case wave_t.endGame:
		game_restart();
		break;
	default:
		break;
}

if (!instance_exists(currentWaveInst)) {
	waveInitFlag = false;
	currentWave = nextWave;
}
