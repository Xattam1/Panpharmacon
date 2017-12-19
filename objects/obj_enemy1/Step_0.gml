// @description Insert description here
// You can write your code in this editor

bulletPatternObj.x = x;
bulletPatternObj.y = y;

if (!initFlag) {
	if (tempStep < tempMaxStep) {
		bulletPatternObj.pattern = 1;
		x += 5;
		tempStep++;
	} else if (tempStep < (tempMaxStep * 2)) {
		bulletPatternObj.pattern = 2;
		y += 5;
		tempStep++
	} else if (tempStep < (tempMaxStep * 3)) {
		bulletPatternObj.pattern = 2;
		x -= 5;
		tempStep++;
	} else if (tempStep < (tempMaxStep * 4)) {
		bulletPatternObj.pattern = 2;
		y -= 5;	
		tempStep++;
	} else { tempStep = 0; }
} else {
	x += 5;
	initStepCounter += 5;
	if (initStepCounter == initStepCountMax) {
		initFlag = false;
	}
}