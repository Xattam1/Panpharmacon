// bulletPatternGenerator( BPA, IAS, TBA, TAS, ASO, BS );

// VARIABLES
bulletPerArray = argument0;
individualArraySpread = argument1;

totalBulletArrays = argument2;
totalArraySpread = argument3;

	angleSpinOffset = argument4;
currentSpinSpeed = 0;
spinSpeedChangeRate = 0;
spinReversal = 0;
maxSpinSpeed = 30;

fireRate = 20;
bulletSpeed = argument5;

//objectWidth = 0
//objectHeight = 0
//xOffset = 0;
//yOffset = 0

//bulletsOnScreen = 0;
//fps = 0;

// CODE LOGIC
for (arrayCounter = 0; arrayCounter < totalBulletArrays; arrayCounter++) {
	for (bulletCounter = 0; bulletCounter < bulletPerArray; bulletCounter++) {
		initAngle = (bulletCounter % bulletPerArray) * (individualArraySpread / (bulletPerArray - 0));
		bulletAngle = initAngle + (arrayCounter * totalArraySpread);
		finalBulletAngle = bulletAngle + angleSpinOffset;
		bullet = instance_create_layer(x + 8, y + 8, "Instances_bullet_layer", obj_bullet1);
		with (bullet) {
			speed = other.bulletSpeed;
			direction = other.finalBulletAngle;
		}
	}
}