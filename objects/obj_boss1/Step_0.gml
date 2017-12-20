/// @description Insert description here
// You can write your code in this editor

if (initFlag) {
	image_blend = c_green;
	y += 5;
	initStepCounter += 5;
	bulletPatternObj1.x = x;
	bulletPatternObj1.y = y;
	bulletPatternObj2.x = x;
	bulletPatternObj2.y = y;
	if (initStepCounter == initStepCountMax) { initFlag = false; }
} else {
	if (health > 50) {
		// Patterns for first half of health.
		//image_blend = c_green;
		bulletPatternObj1.pattern = 5;
		bulletPatternObj2.pattern = 6;
	} else if (health > 25) {
		// Patterns for second third quarter of health.
		image_blend = c_yellow;
		bulletPatternObj1.pattern = 7;
		bulletPatternObj2.pattern = 8;
	} else {
		// Patterns for last quarter of health.
		image_blend = c_red;
		bulletPatternObj1.pattern = 9;
		bulletPatternObj2.pattern = 10;
	}
}