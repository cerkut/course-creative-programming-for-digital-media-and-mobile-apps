
void setup() {
  size(640,640);
  background(0);
    
  drawGrid(10, 255); 
}




void drawGrid(int n, int shadeofgray) {

  stroke(shadeofgray, shadeofgray, shadeofgray, 255);
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


