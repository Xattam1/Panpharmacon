/// @description Insert description here
// You can write your code in this editor

if (!initFlag) {
	if (--health == 0) {
		instance_destroy();
		instance_destroy(bulletPatternObj1);
		instance_destroy(bulletPatternObj2);
		obj_status.levelProgress = 0;
	}
}