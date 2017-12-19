/// @description Insert description here
// You can write your code in this editor

var endWaveFlag = true;
for (k = 0; k < numEnemies; ++k) {
	if (instance_exists(enemyArray[k])) {
		endWaveFlag = false;
		break;
	}
}
if (endWaveFlag) { instance_destroy(); }