/// @description Insert description here
// You can write your code in this editor

if (patternOld != pattern) {
	BPA = 0;
	IAS = 0;
	TBA = 0;
	TAS = 0;
	ASO = 0;
	BS = 0;
	patternOld = pattern;
}

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
	case 5:
		cooldownInit = 8;
		if (cooldown <= 0) {
			cooldown = cooldownInit;
			BPA = 2;						// Bullets Per Array
			IAS = 60;						// Initial Array Spread
			TBA = 4;						// Total Bullet Arrays
			TAS = 90;						// Total Array Spread
			//ASOStartOffset = 105;
			//ASONewRange = 60;
			//ASONew = ASOStartOffset;
			//if (ASO < ASONewRange) { ASONew = ASOStartOffset + ASO; }
			//else if (ASO >= 2 * ASONewRange) { ASO = 0; }
			//else { ASONew = ((ASOStartOffset + ASONewRange) - (ASO % ASONewRange)); }
			ASONew = ASO;
			ASO += 10;						// Angle Spin Offet
			BS = 2;							// Bullet Speed
			script_execute(bulletPatternGenerator, BPA, IAS, TBA, TAS, ASONew, BS);
		} else { cooldown--; }
		break;
	case 6:
		cooldownInit = 32;
		if (cooldown <= 0) {
			cooldown = cooldownInit;
			BPA = 4;						// Bullets Per Array
			IAS = 60;						// Initial Array Spread
			TBA = 4;						// Total Bullet Arrays
			TAS = 90;						// Total Array Spread
			//ASOStartOffset = 105;
			//ASONewRange = 60;
			//ASONew = ASOStartOffset;
			//if (ASO < ASONewRange) { ASONew = ASOStartOffset + ASO; }
			//else if (ASO >= 2 * ASONewRange) { ASO = 0; }
			//else { ASONew = ((ASOStartOffset + ASONewRange) - (ASO % ASONewRange)); }
			ASONew = ASO;
			ASO -= 2;						// Angle Spin Offet
			BS = 2;							// Bullet Speed
			script_execute(bulletPatternGenerator, BPA, IAS, TBA, TAS, ASONew, BS);
		} else { cooldown--; }
		break;
	case 7:
		cooldownInit = 32;
		if (cooldown <= 0) {
			cooldown = cooldownInit;
			BPA = 6;						// Bullets Per Array
			
			IASNewRange = 90;
			IASNew = 0;
			if (-IAS < IASNewRange) { IASNew = IAS; }
			else if (-IAS >= 2 * IASNewRange) { IAS = 0; }
			else { IASNew = -(IASNewRange + (IAS % IASNewRange)); }
			
			IAS -= 10;						// Initial Array Spread
			TBA = 1;						// Total Bullet Arrays
			TAS = 0;						// Total Array Spread
			ASO = -180 + IASNew / 10;				// Angle Spin Offet
			BS = 2;							// Bullet Speed
			script_execute(bulletPatternGenerator, BPA, IASNew + 5, TBA, TAS, ASO, BS);
		} else { cooldown--; }
		break;
	case 8:
		cooldownInit = 32;
		if (cooldown <= 0) {
			cooldown = cooldownInit;
			BPA = 6;						// Bullets Per Array
			
			IASNewRange = 90;
			IASNew = 0;
			if (IAS < IASNewRange) { IASNew = IAS; }
			else if (IAS >= 2 * IASNewRange) { IAS = 0; }
			else { IASNew = ( IASNewRange - (IAS % IASNewRange)); }
			
			IAS += 10;						// Initial Array Spread
			TBA = 1;						// Total Bullet Arrays
			TAS = 0;						// Total Array Spread
			ASO = 180 + IASNew / 10;				// Angle Spin Offet
			BS = 2;							// Bullet Speed
			script_execute(bulletPatternGenerator, BPA, IASNew - 5, TBA, TAS, ASO, BS);
		} else { cooldown--; }
		break;
	case 9:
		cooldownInit = 16;
		if (cooldown <= 0) {
			cooldown = cooldownInit;
			BPA = 1;						// Bullets Per Array
			
			ASONewRange = 60;
			ASONew = 0;
			if (ASO < ASONewRange) { ASONew += ASO; }
			else if (ASO >= 2 * ASONewRange) { ASO = 0; }
			else { ASONew = (ASONewRange - (ASO % ASONewRange)); }
			
			IAS = 12;						// Initial Array Spread
			TBA = 30;						// Total Bullet Arrays
			TAS = 12;						// Total Array Spread
			ASO += 20;						// Angle Spin Offet
			BS = 4;							// Bullet Speed
			script_execute(bulletPatternGenerator, BPA, IAS, TBA, TAS, ASONew, BS);
		} else { cooldown--; }
		break;
	case 10:
		cooldownInit = 100;
		if (cooldown <= 0) {
			cooldown = cooldownInit;
			BPA = 15;						// Bullets Per Array
			IAS = 100;						// Initial Array Spread
			TBA = 1;						// Total Bullet Arrays
			TAS = 0;						// Total Array Spread
			ASO = 135;						// Angle Spin Offet
			BS = 6;							// Bullet Speed
			script_execute(bulletPatternGenerator, BPA, IAS, TBA, TAS, ASO, BS);
		} else { cooldown--; }
		break;
	default:
		break;
}
