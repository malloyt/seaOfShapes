int startX = 250;
int startY = 0;
int endX = 0;
int endY = 150;
int sweight = 5;
int transp = 100;
int decision = 0;
//0 = draw lightning bolt, 1 = draw fade/cover
int fade = 100;
int recth = 20;

void setup() {
	size(500, 500);
	background(0);
	//frameRate(200);
}

void draw() {
	decision = (Math.random() + 0.02);

	if (decision >= 1) {

		while (endY < 500) {

			endX = startX + (int)(Math.random() * 19) - 9;
			endY = startY + (int)(Math.random() * 10);
			sweight -= 0.035;
			transp -= 1;
			strokeWeight(sweight);
			stroke(250, 250, 20, transp);
			line(startX, startY, endX, endY);
			startX = endX;
			startY = endY;
		}
	}

	startX = 250;
	startY = 0;
	endX = 0;
	endY = 150;
	sweight = 5;
	transp = 100;
	decision = 0;


	fade -= 2;
	recth += 15;
	noStroke();
	fill(0, 0, 0, fade);
	rect(0, 0, 500, recth);
	if (recth >= 475) {
		decision = 0;
		fade = 100;
		recth = 20;

	}

}
