//Genuary 1/20/2022 Sea of Shapes

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  shape();
  waves();
}

void waves() {
  fill(255);
  stroke(255);
  int x = 0;
  int y = 250;
  beginShape();

  for (int i = 0; i < 6; i++) {
    vertex(x, y);
    bezierVertex(x+35, y, x+60, y-20, x+75, y-75);
    vertex(x+75, y-75);
    bezierVertex(x+110, y-50, x+120, y-20, x+80, y);
    vertex(x+80, y);
    x+=80;
  }
  
  vertex(480,250);
  vertex(500,250);
  vertex(500,0);
  vertex(0,0);
  vertex(0,250);

  endShape();

  fill(255);
  textSize(20);
  text(mouseX + ", " + mouseY, 10, 30);
}

void shape() {
  waves();
  noStroke();
  int x = (int)(Math.random()*500);
  int y = (int)(Math.random()*500);
  int w = (int)(Math.random()*50);
  int h = (int)(Math.random()*50);

  int c = (int)(Math.random()*4);

  if (c == 1) {
    fill(150, 185, 250);
    rect(x, y, w, h);
  }
  if (c == 2) {
    fill(150, 240, 250);
    ellipse(x, y, w, h);
  }
  if (c == 3) {
    fill(90, 130, 215);
    triangle(x, y, x+5, y+15, x-5, y+15);
  }
}
