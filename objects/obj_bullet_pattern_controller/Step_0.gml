/// @description Insert description here
// You can write your code in this editor

switch(pattern) {
	case 1:
		cooldownInit = 2;
		if (cooldown <= 0) {
			cooldown = cooldownInit;
			BPA = 3;
			IAS = 90;
			TBA = 3;
			TAS = 120;
			ASO += 20;
			BS = 10;
			script_execute(bulletPatternGenerator, BPA, IAS, TBA, TAS, ASO, BS);
		} else { cooldown--; }
		break;
	case 2:
		cooldownInit = 4;
		if (cooldown <= 0) {
			cooldown = cooldownInit;
			BPA = 1;
			IAS += 5;
			TBA = 5;
			TAS = 20;
			ASO += 45;
			BS += 0.5;
			script_execute(bulletPatternGenerator, BPA, IAS, TBA, TAS, ASO, BS);
		} else { cooldown--; }
		break;
	case 3:
		cooldownInit = 2;
		if (cooldown <= 0) {
			cooldown = cooldownInit;
			BPA = 3;
			IAS = 90;
			TBA = 3;
			TAS = 120;
			ASO += 20;
			BS = 10;
			script_execute(bulletPatternGenerator, BPA, IAS, TBA, TAS, ASO, BS);
		} else { cooldown--; }
	case 4:
		cooldownInit = 2;
		if (cooldown <= 0) {
			cooldown = cooldownInit;
			BPA = 3;
			IAS = 90;
			TBA = 3;
			TAS = 120;
			ASO += 20;
			BS = 10;
			script_execute(bulletPatternGenerator, BPA, IAS, TBA, TAS, ASO, BS);
		} else { cooldown--; }
	default:
		break;
}