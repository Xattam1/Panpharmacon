/// @description Insert description here
// You can write your code in this editor

switch (currentWave) {
	case wave_t.wave1:
		if (!waveInitFlag) {
			currentWaveInst = instance_create_layer(x, y, "Instances_Enemy_Wave", obj_wave1);
		}
		waveInitFlag = true;
		break;
	case wave_t.wave2:
		//if (!waveInitFlag) {
			//currentWaveInst = instance_create_layer(x, y, "Instances_Enemy_Wave", OBJHERE);
		//}
		//waveInitFlag = true;
		break;
	default:
		break;
}

if (!instance_exists(currentWaveInst)) {
	waveInitFlag = false;
	currentWave++;
}