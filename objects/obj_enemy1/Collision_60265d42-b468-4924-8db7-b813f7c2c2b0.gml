/// @description Insert description here
// You can write your code in this editor

if (--hp == 0) {
	instance_destroy();
	instance_destroy(bulletPatternObj);
  obj_status.levelProgress++
}