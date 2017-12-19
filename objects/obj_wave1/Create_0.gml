/// @description Insert description here
// You can write your code in this editor

leftSideEnemyArray[5] = 0;
rightSideEnemyArray[5] = 0;
yOffset = 200;
yDec = 100;

for (k = 0; k < 5; k++) {
	leftSideEnemyArray[k] = instance_create_layer(x - 400, y - yOffset, "Instances_Enemy_Wave", obj_enemy2);
	leftSideEnemyArray[k].bulletPatternObj.pattern = 3;
	rightSideEnemyArray[k] = instance_create_layer(x + 400, y - yOffset, "Instances_Enemy_Wave", obj_enemy2);
	rightSideEnemyArray[k].bulletPatternObj.pattern = 4;
	yOffset -= yDec;
}