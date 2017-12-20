/// @description Insert description here
// You can write your code in this editor

bulletPatternObj = instance_create_layer(x, y, "Instances_bullet_layer", obj_bullet_pattern_controller);

bulletPatternObj.pattern = 1;

tempStep = 0;
tempMaxStep = 50;

initFlag = true;
initStepCountMax = 600;
initStepCounter = 0;

hp = 3;							// COULDN'T USE HEALTH BECAUSE IT WOULD AFFECT EVERY ENEMY OF THIS TYPE.