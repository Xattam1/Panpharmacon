//draw_sprite(spr_GUI,0,0,0)

draw_sprite_ext(spr_healthBackground,0,x,y,1,1,0,c_white,1)

draw_sprite_ext(spr_healthFiller,1,x,y, 
	max(0,playerHealth/playerMaxHealth),1,0,c_white,1)
	
draw_sprite_ext(spr_progressBackground,0,x,y+25,1,1,0,c_white,1)

draw_sprite_ext(spr_progressFiller,1,x,y+25, 
	min(1,levelProgress/levelMaxProgress),1,0,c_white,1)