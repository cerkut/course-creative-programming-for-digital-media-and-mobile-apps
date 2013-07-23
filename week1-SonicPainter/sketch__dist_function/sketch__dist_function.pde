
void setup() {
    size(320,320);
    background(0);
}


void drawGrid(int n) {
  
  stroke(255);
  strokeWeight(1);
  
  for (int i=n; i<height; i=i+n) {
    line(0, i, width, i);  
  }
  
  for (int i=n; i<width; i=i+n) {
    line(i, 0, i, height);  
  }
}

void draw() {
  
  
  drawGrid(10);
  
  
}

void mousePressed() {
  
  println("Mouse was pressed at " 
  + "x: " + mouseX + "px y: " + mouseY + "px");
  
  println(
  "Using width/2 and height/2 we know that it's this far from the centre: " + 
  dist(mouseX,mouseY,width/2,height/2));
  
}

