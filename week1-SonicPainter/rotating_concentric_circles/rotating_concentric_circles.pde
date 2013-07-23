
int w = 320;
int h = 320;
int bg = 0;

int mx,my;

void setup() {
  size(w,h);
  background(bg);
  doDraw();
  mx = int(w/2);
  my = int(h/2);
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
  
  
  //drawCircle(r,g,b,255);
  
  drawCircleInteractive(r,g,b,255);
  
  drawCircleInteractive1(r,g,b,255);
  drawCircleInteractive2(r,g,b,255);
  //drawCircleInteractive3(r,g,b,255);
  //drawCircleInteractive4(r,g,b,255);
}


void mouseDragged() {
  doDraw();
}


void drawCircle(float r, float g, float b, float a) {
  stroke(r,g,b,a);
  fill(255,0);
  ellipse(mx, my, width, height);
}



void drawCircleInteractive(float r, float g, float b, float a) {
  stroke(r,g,b,a);
  fill(255,0);
  ellipse(mx, my, width-mouseX, height-mouseY);
  
  int tmpdiamx = width-mouseX;
  int tmpdiamy = height-mouseY;
  
  while (tmpdiamx > 0) {
      ellipse(mx, my, tmpdiamx-10, tmpdiamy-10);
      tmpdiamx -= 10;
      tmpdiamy -= 10;
  }
}

void drawCircleInteractive1(float r, float g, float b, float a) {
  stroke(r,g,b,a);
  fill(255,0);
  ellipse(mx, my, (width-mouseX)/2, (height-mouseY)/2);
  
  int tmpdiamx = (width-mouseX)/2;
  int tmpdiamy = (height-mouseY)/2;
  
  while (tmpdiamx > 0) {
      ellipse(mx, my, tmpdiamx-10, tmpdiamy-10);
      tmpdiamx -= 10;
      tmpdiamy -= 10;
  }
  
}

void drawCircleInteractive2(float r, float g, float b, float a) {
  stroke(r,g,b,a);
  fill(255,0);
  ellipse(mx, my, (width-mouseX)*mouseX/width, (height-mouseY)*mouseY/height);
   
  int tmpdiamx = (width-mouseX)*mouseX/width;
  int tmpdiamy = (height-mouseY)*mouseY/height;
  
  while (tmpdiamx > 0) {
      ellipse(mx, my, tmpdiamx-10, tmpdiamy-10);
      tmpdiamx -= 10;
      tmpdiamy -= 10;
  }
  
}
void drawCircleInteractive3(float r, float g, float b, float a) {
  stroke(r,g,b,a);
  fill(255,0);
  ellipse(mx, my, (width-pmouseX)*pmouseX/width, (height-pmouseY)*pmouseY/height);
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


