// Shooting cooldown
if curr_cd != 0 {
	curr_cd--	
}

// Movement
if keyboard_check(vk_up) && keyboard_check(vk_right) {
	direction = 45
	speed = player_speed
} else if keyboard_check(vk_up) && keyboard_check(vk_left) {
	direction = 135
	speed = player_speed
} else if keyboard_check(vk_down) && keyboard_check(vk_right) {
	direction = 315
	speed = player_speed
} else if keyboard_check(vk_down) && keyboard_check(vk_left) {
	direction = 225
	speed = player_speed
} else if keyboard_check(vk_up) {
	direction = 90
	speed = player_speed
} else if keyboard_check(vk_down) {
	direction = 270
	speed = player_speed
} else if keyboard_check(vk_left) {
	direction = 180
	speed = player_speed
} else if keyboard_check(vk_right) {
	direction = 0
	speed = player_speed
} else {
	speed = 0	
}


// Handle Shooting
if keyboard_check(vk_space) {
	if curr_cd <= 0 {
		instance_create_layer(x, y, 1, obj_bullet2)	
		curr_cd = bullet_cooldown
	}
}

