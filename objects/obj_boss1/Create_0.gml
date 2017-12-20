/// @description Insert description here
// You can write your code in this editor

health = 100;

bulletPatternObj1 = instance_create_layer(x, y, "Instances_bullet_layer", obj_bullet_pattern_controller);
bulletPatternObj2 = instance_create_layer(x, y, "Instances_bullet_layer", obj_bullet_pattern_controller);

initFlag = true;
initStepCountMax = 300;
initStepCounter = 0;
