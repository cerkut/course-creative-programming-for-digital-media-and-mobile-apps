
int w = 320;
int h = 320;
int bg = 0;



void setup() {
  size(w,h);
  background(bg);
  doDraw();
}

void  draw() {

}

void doDraw() {

  fill(bg);
  rect(0,0,w,h);
  //drawGrid(10, 0); 
  
  /*float r = random(0,255);
  float g = random(0,255);
  float b = random(0,255);*/
  
  float r = 200;
  float g = r;
  float b = r;
  
  
  drawCircle(r,g,b,255);
  
  drawCircleInteractive(r,g,b,255);
  
  drawCircleInteractive1(r,g,b,255);
  drawCircleInteractive2(r,g,b,255);
  drawCircleInteractive3(r,g,b,255);
  //drawCircleInteractive4(r,g,b,255);
}


void mouseDragged() {
  doDraw();
}


void drawCircle(float r, float g, float b, float a) {
  stroke(r,g,b,a);
  fill(255,0);
  ellipse(width/2, height/2, width, height);
}



void drawCircleInteractive(float r, float g, float b, float a) {
  stroke(r,g,b,a);
  fill(255,0);
  ellipse(mouseY, mouseX, width-mouseX, height-mouseY);
}

void drawCircleInteractive1(float r, float g, float b, float a) {
  stroke(r,g,b,a);
  fill(255,0);
  ellipse(mouseY, mouseX, (width-mouseX)/2, (height-mouseY)/2);
}

void drawCircleInteractive2(float r, float g, float b, float a) {
  stroke(r,g,b,a);
  fill(255,0);
  ellipse(mouseY, mouseX, (width-mouseX)*mouseX/width, (height-mouseY)*mouseY/height);
}
void drawCircleInteractive3(float r, float g, float b, float a) {
  stroke(r,g,b,a);
  fill(255,0);
  ellipse(pmouseY, pmouseX, (width-pmouseX)*pmouseX/width, (height-pmouseY)*pmouseY/height);
}
void drawCircleInteractive4(float r, float g, float b, float a) {
  stroke(r,g,b,a);
  fill(255,0);
  ellipse(mouseY, mouseX, width-mouseX, height-mouseY);
}
void drawGrid(int n, int shadeofgray) {

  stroke(shadeofgray, shadeofgray, shadeofgray, 255);
  strokeWeight(1);
  
  for (int i=n; i<height; i=i+n) {
    line(0, i, width, i);  
  }
  
  for (int i=n; i<width; i=i+n) {
    line(i, 0, i, height);  
  }
}


void drawGridOffset(int n, int shadeofgray, int offset) {

stroke(shadeofgray, shadeofgray, shadeofgray, 128);
strokeWeight(1);
  
  for (int i=0; i<height; i=i+n-offset) {
    line(0, i, width, i);  
  }
  
  for (int i=0; i<width; i=i+n-offset) {
    line(i, 0, i, height);  
  }
} 


