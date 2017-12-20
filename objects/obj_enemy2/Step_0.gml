// @description Insert description here
// You can write your code in this editor

bulletPatternObj.x = x;
bulletPatternObj.y = y;

if (initFlag) {
	y += 5;
	initStepCounter += 5;
	if (initStepCounter == initStepCountMax) { initFlag = false; }
	xAfterTransition = x;
	if (side == enemy2_side_t.left) { 
		directionIndicator = enemy2_direction_t.right;
		maxLeft = xAfterTransition;
		maxRight = xAfterTransition + 200;
	} else {
		directionIndicator = enemy2_direction_t.left;
		maxLeft = xAfterTransition - 200;
		maxRight = xAfterTransition;	
	}
} else {
	if (x < maxRight && directionIndicator == enemy2_direction_t.right) {
		directionIndicator = enemy2_direction_t.right;
		x += 3;
	} else if (x >= maxRight && directionIndicator == enemy2_direction_t.right) {
		directionIndicator = enemy2_direction_t.left;
		x -= 3;
	} else if (x > maxLeft && directionIndicator == enemy2_direction_t.left) {
		directionIndicator = enemy2_direction_t.left;
		x -= 3;
	} else {
		directionIndicator = enemy2_direction_t.right;
		x += 3;
	}
}