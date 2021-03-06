
void setup() {
  size(640,640);
  background(0);
    
  drawGrid(10); 
  drawGridOffset(10, 128, 1);
  drawGridOffset(10, 64, 2);
  drawGridOffset(10, 32, 3);
  drawGridOffset(10, 16, 4);
  drawGridOffset(10, 8, 5);
  drawGridOffset(10, 4, 6);
  drawGridOffset(10, 2, 7);
  drawGridOffset(10, 1, 8);
}




void drawGrid(int n) {

  stroke(random(0,255), random(0,255), random(0,255), 255);
  strokeWeight(1);
  
  for (int i=n; i<height; i=i+n) {
    line(0, i, width, int(random(i-10, i+10)));  
  }
  
  for (int i=n; i<width; i=i+n) {
    line(i, 0, int(random(i-10, i+10)), height);  
  }
}


void drawGridOffset(int n, int shadeofgray, int offset) {

stroke(random(0,255), random(0,255), random(0,255), shadeofgray);
strokeWeight(1);
  
  for (int i=0; i<height; i=i+n-offset) {
    line(int(random(i-n, i+n)), 
    int(random(-n, n)), 
    int(random(i-n, i+n)), 
    height); 
  }
  
  for (int i=0; i<width; i=i+n-offset) {
    line(
      int(random(-n, n)), 
      int(random(i-n, i+n)), 
      width, 
      int(random(i-n, i+n))
    );  
  }
} 


