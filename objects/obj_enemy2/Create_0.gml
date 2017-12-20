/// @description Insert description here
// You can write your code in this editor

enum enemy2_side_t{ left, right };
enum enemy2_direction_t{ left, right };

bulletPatternObj = instance_create_layer(x, y, "Instances_bullet_layer", obj_bullet_pattern_controller);

tempStep = 0;
tempMaxStep = 100;

initFlag = true;
initStepCountMax = 600;
initStepCounter = 0;

side = 0;
maxLeft = 0;
maxRight = 0;
xAfterTransition = 0;
directionIndicator = 0;