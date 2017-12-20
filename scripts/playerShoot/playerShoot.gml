buff = obj_status.playerBuff

if buff == 0 {
	instance_create_layer(x, y, layer, obj_bullet2)	
} 

if buff == 1 {
	b = instance_create_layer(x, y, layer, obj_bullet2)
	b = instance_create_layer(x, y, layer, obj_bullet2)	
	with (b) {
		direction = 110	
	}
	b = instance_create_layer(x, y, layer, obj_bullet2)	
	with (b) {
		direction = 70
	}
}

if buff == 2 {
		b = instance_create_layer(x, y, layer, obj_bullet2)
		b = instance_create_layer(x, y, layer, obj_bullet2)
		with (b) {
			direction = 135
		}
		b = instance_create_layer(x, y, layer, obj_bullet2)
		with (b) {
			direction = 45	
		}
		b = instance_create_layer(x, y, layer, obj_bullet2)
		with (b) {
			direction = 180	
		}
		b = instance_create_layer(x, y, layer, obj_bullet2)
		with (b) {
			direction = 0	
		}
		b = instance_create_layer(x, y, layer, obj_bullet2)
		with (b) {
			direction = 225	
		}
		b = instance_create_layer(x, y, layer, obj_bullet2)
		with (b) {
			direction = 315	
		}
		b = instance_create_layer(x, y, layer, obj_bullet2)
		with (b) {
			direction = 270	
		}
}