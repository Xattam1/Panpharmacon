/// @description Insert description here
// You can write your code in this editor
obj_status.playerHealth += 25
if obj_status.playerHealth > 100 {
	obj_status.playerHealth = 100
}

instance_destroy()