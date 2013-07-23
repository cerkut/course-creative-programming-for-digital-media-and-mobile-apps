
void setup() {
  size(320,320);
  background(255);
    
}

void doDraw() {
  fill(255);
  rect(0,0,width,height);
  drawGridColor(62, 255);
  drawGrid(26, 128);
  drawGrid(13, 64);
  
}

void draw() {
  
}



void drawGrid(int n, int shadeofgray) {

  stroke(shadeofgray, shadeofgray, shadeofgray, shadeofgray);
  strokeWeight(1);
  
  for (int i=n; i<height; i=i+n) {
    line(
      int(random(-n, n)), 
      int(random(i-n, i+n)), 
      width, 
      int(random(i-n, i+n))
    );  
  }
  
  for (int i=n; i<width; i=i+n) {
    line(int(random(i-n, i+n)), 
    int(random(-n, n)), 
    int(random(i-n, i+n)), 
    height);  
  }
}

void drawGridColor(int n, int shadeofgray) {

  stroke(int(random(0,255)), int(random(0,255)), int(random(0,255)), shadeofgray);
  strokeWeight(1);
  
  for (int i=n; i<height; i=i+n) {
    line(
      int(random(-n, n)), 
      int(random(i-n, i+n)), 
      width, 
      int(random(i-n, i+n))
    );  
  }
  
  for (int i=n; i<width; i=i+n) {
    line(int(random(i-n, i+n)), 
    int(random(-n, n)), 
    int(random(i-n, i+n)), 
    height);  
  }
}


void mouseDragged() {
  doDraw();
}


