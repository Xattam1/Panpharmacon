/// @description Insert description here
// You can write your code in this editor

numEnemies = 3;
enemyArray[numEnemies] = 0;
xOffset = 200;
xDec = 200;

for (k = 0; k < numEnemies; k++) {
	enemyArray[k] = instance_create_layer(x - 800 - xOffset, y - 200, "Instances_Enemy_Wave", obj_enemy1);
	enemyArray[k].bulletPatternObj.pattern = 1;
	xOffset -= xDec;
}
