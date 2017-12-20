// Spawn health packs or gun upgrades
rnd = random_range(0,100)
if rnd > 90 {
	instance_create_layer(x,y,0,obj_healthPack)
}

if rnd < 5 {
	rnd = random_range(0,3)
	if rnd < 2 {
		instance_create_layer(x,y,0,obj_buff1)
	} else {
		instance_create_layer(x,y,0,obj_buff2)	
	}
}