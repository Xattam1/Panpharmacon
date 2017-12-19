/// @description Insert description here
// You can write your code in this editor

switch(pattern) {
	case 1:
		cooldownInit = 4;
		if (cooldown <= 0) {
			cooldown = cooldownInit;
			BPA = 3;
			IAS = 90;
			TBA = 3;
			TAS = 120;
			ASO += 10;
			BS = 5;
			script_execute(bulletPatternGenerator, BPA, IAS, TBA, TAS, ASO, BS);
		} else { cooldown--; }
		break;
	case 2:
		cooldownInit = 8;
		if (cooldown <= 0) {
			cooldown = cooldownInit;
			BPA = 1;
			IAS += 5;
			TBA = 5;
			TAS = 20;
			ASO += 30;
			BS += 0.25;
			script_execute(bulletPatternGenerator, BPA, IAS, TBA, TAS, ASO, BS);
		} else { cooldown--; }
		break;
	case 3:
		cooldownInit = 8;
		if (cooldown <= 0) {
			cooldown = cooldownInit;
			BPA = 1;
			IAS = 0;
			TBA = 1;
			TAS = 0;
			ASONewrange = 90;
			ASONew = -ASONewrange;
			if (ASO < ASONewrange) { ASONew = ASO - ASONewrange; }
			else if (ASO >= 2 * ASONewrange) { ASO = 0; }
			else { ASONew = 0 - (ASO % ASONewrange); }
			ASO += 10;
			BS = 4;
			script_execute(bulletPatternGenerator, BPA, IAS, TBA, TAS, ASONew, BS);
		} else { cooldown--; }
		break;
	case 4:
		cooldownInit = 8;
		if (cooldown <= 0) {
			cooldown = cooldownInit;
			BPA = 1;
			IAS = 0;
			TBA = 1;
			TAS = 0;
			ASONewrange = 90;
			ASONew = 0;
			if (ASO < ASONewrange) { ASONew = ASO; }
			else if (ASO >= 2 * ASONewrange) { ASO = 0; }
			else { ASONew = ASONewrange - (ASO % ASONewrange); }
			ASO += 10;
			BS = 4;
			script_execute(bulletPatternGenerator, BPA, IAS, TBA, TAS, ASONew, BS);
		} else { cooldown--; }
		break;
	default:
		break;
}