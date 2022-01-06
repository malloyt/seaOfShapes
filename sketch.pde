void setup() {
  size(800, 500);
}

void draw() {
  background(0);
  fill(255);
  stroke(255);
  rect(50, 50, 700, 400, 28); //white background for cake

  noFill();
  strokeWeight(10);
  stroke(0);
  rect(150, 150, 225, 200, 28); //left box
  rect(425, 150, 225, 200, 28); //right box

  fill(255);
  noStroke();
  rect(640, 170, 20, 150);

  fill(0);
  textSize(30);
  textAlign(CENTER);
  text("Problem", 262.5, 390);
  text("Solved", 536.5, 390);

  drawWoman(210, 180);
  drawMan(300, 180);

  drawMan2(480, 180);
  drawWoman2(730, 350);

  drawBrokenBricks();

  fill(255);
  text(mouseX + "," + mouseY, 50, 50);
}

void drawWoman(float headX, float headY) {

  stroke(100, 100, 100);
  fill(100, 100, 100);
  triangle(headX, headY, headX+30, headY+90, headX-30, headY+90); //woman's body

  fill(255);
  stroke(255);
  rect(headX-20, headY-20, 40, 40); //erasing top of woman's body

  stroke(100, 100, 100);
  fill(100, 100, 100);
  rect(headX-20, headY+85, 5, 50, 28); //left leg
  rect(headX+10, headY+85, 5, 50, 28); //right leg

  rect(headX-20, headY+20, 40, 5, 28); //woman's shoulders
  line(headX-20, headY+20, headX-35, headY+65); //left arm
  line(headX+20, headY+20, headX+35, headY+65); //right arm
  ellipse(headX, headY, 20,20); //woman's head
}

void drawMan(float headX, float headY) {
  stroke(100, 100, 100);
  fill(100, 100, 100);
  rect(headX-20, headY+20, 35, 74, 28, 28, 5, 5); //man's body
  rect(headX-20, headY+85, 5, 50, 28); //left leg
  rect(headX+10, headY+85, 5, 50, 28); //right leg
  rect(headX-20, headY+18, 36, 15, 28); //man's shoulders
  line(headX-20, headY+19, headX-55, 245); //left arm
  rect(headX+5, headY+19, 30, 50, 0, 28, 0, 28); //total right arm
  stroke(255);
  strokeWeight(8);
  line(headX+25, headY+32, headX+25, headY+95); //erase for complete right arm
  stroke(100, 100, 100);
  fill(100, 100, 100);
  rect(headX+33, headY+45, 3, 35, 28); //rectangle for rounded right arm
  strokeWeight(10);
  ellipse(headX, headY, 20,20); //man's head
}

void drawMan2(float headX, float headY) {
  rect(headX-20, headY+20, 35, 74, 28, 28, 5, 5); //man's body
  rect(headX-20, headY+85, 5, 50, 28); //left leg
  rect(headX+10, headY+85, 5, 50, 28); //right leg
  rect(headX-20, headY+18, 36, 15, 28); //man's shoulders

  stroke(100, 100, 100);
  fill(100, 100, 100);
  rect(headX-35, headY+19, 30, 50, 28, 0, 28, 0); //total left arm
  stroke(255);
  strokeWeight(6);
  line(headX-28, headY+32, headX-28, headY+95); //erase for left arm
  strokeWeight(8);
  stroke(100, 100, 100);
  fill(100, 100, 100);
  rect(headX-36, headY+45, 2, 35, 28); //rectangle for rounded left arm


  rect(headX+5, headY+19, 30, 50, 0, 28, 0, 28); //total right arm
  stroke(255);
  strokeWeight(8);
  line(headX+25, headY+32, headX+25, headY+95); //erase for complete right arm
  stroke(100, 100, 100);
  fill(100, 100, 100);
  rect(headX+33, headY+45, 3, 35, 28); //rectangle for rounded right arm


  strokeWeight(10);
  ellipse(headX, headY, 20,20); //man's head
}

void drawWoman2(float headX, float headY) {
  stroke(100, 100, 100);
  fill(100, 100, 100);
  ellipse(headX, headY, 20,20);
  line(headX-25, headY-5, headX+3, headY-25); //woman's shoulders
  quad(headX-8, headY-15, headX-15, headY-15, headX-65, headY-55, headX-20, headY-80); //woman's body

  stroke(100, 100, 100);
  fill(100, 100, 100);
  line(headX-55, headY-60, headX-80, headY-100); //left leg
  line(headX-30, headY-75, headX-50, headY-115); //right leg

  line(headX-25, headY-5, headX-55, headY-30); //left arm
  line(headX+3, headY-25, headX-3, headY-65); //right arm
}

void drawBrokenBricks() {
  stroke(0);
  line(670, 160, 680, 175);
  line(660, 205, 675, 190);
  line(690, 205, 695, 225);
}
