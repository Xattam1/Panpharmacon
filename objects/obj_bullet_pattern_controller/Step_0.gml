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
		cooldownInit = 64;
		if (cooldown <= 0) {
			cooldown = cooldownInit;
			BPA = 1;
			IAS = 0;
			TBA = 1;
			TAS = 0;
			ASOStartOffset = 195;
			ASONewRange = 50;
			ASONew = ASOStartOffset;
			if (ASO < ASONewRange) { ASONew = ASOStartOffset + ASO; }
			else if (ASO >= 2 * ASONewRange) { ASO = 0; }
			else { ASONew = ((ASOStartOffset + ASONewRange) - (ASO % ASONewRange)); }
			ASO += 20;
			BS = 2;
			script_execute(bulletPatternGenerator, BPA, IAS, TBA, TAS, ASONew, BS);
		} else { cooldown--; }
		break;
	case 4:
		cooldownInit = 64;
		if (cooldown <= 0) {
			cooldown = cooldownInit;
			BPA = 1;
			IAS = 0;
			TBA = 1;
			TAS = 0;
			ASOStartOffset = 105;
			ASONewRange = 60;
			ASONew = ASOStartOffset;
			if (ASO < ASONewRange) { ASONew = ASOStartOffset + ASO; }
			else if (ASO >= 2 * ASONewRange) { ASO = 0; }
			else { ASONew = ((ASOStartOffset + ASONewRange) - (ASO % ASONewRange)); }
			ASO += 20;
			BS = 2;
			script_execute(bulletPatternGenerator, BPA, IAS, TBA, TAS, ASONew, BS);
		} else { cooldown--; }
		break;
	default:
		break;
}
