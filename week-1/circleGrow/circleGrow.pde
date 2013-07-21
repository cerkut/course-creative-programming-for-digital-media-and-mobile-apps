int diam = 10;
int growBy = 5;
int fr = 24;
float centX, centY;

void setup() {
  size(320, 320);
  frameRate(fr);
  smooth();
  background(180);
  centX = width/2;
  centY = height/2;
  stroke(0);
  strokeWeight(5);
  fill(255, 50);
}

void draw() {
  if (diam <= width) {
    background(180);
    ellipse(centX, centY, diam, diam);
    diam += growBy;
  } else {
    diam = growBy;
  }
}
