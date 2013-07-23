Maxim maxim;
AudioPlayer player;
AudioPlayer player2;
int circleX, circleY;  // Position of circle button
int circleSize = 93;   // Diameter of circle
color circleColor, baseColor;

boolean circleOver = false;

void setup() {
  size(640, 360);
  circleColor = color(255);
  baseColor = color(102);
  circleX = width/2+circleSize/2+10;
  circleY = height/2;
  maxim = new Maxim(this);
  player = maxim.loadFile("atmos1.wav");
  player.setLooping(true);
  player2 = maxim.loadFile("bells.wav");
  player2.setLooping(false);
  player.volume(0.25);
  ellipseMode(CENTER);
}

void draw() {
  update(mouseX, mouseY);
  
  if (circleOver) {
    //fill(circleHighlight);
  } else {
    //fill(circleColor);
  }
  stroke(0);
  ellipse(circleX, circleY, circleSize, circleSize);
}

void update(int x, int y) {
  if ( overCircle(circleX, circleY, circleSize) ) {
    circleOver = true;
  } else {
    circleOver = false;
  }
}

void mousePressed() {
  if (circleOver) {
    player.play();
  }
}

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
