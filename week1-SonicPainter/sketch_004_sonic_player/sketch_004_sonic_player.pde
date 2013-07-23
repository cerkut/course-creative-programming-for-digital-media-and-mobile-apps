
// dist between mouse and screen center
float red = map(mouseX, 0, width, 0, 255);

// map mouse position within the range 0,255
float green = dist(mouseX, mouseY, width/2, height/2);

lineWidth = constrain(lineWidth, 0, 10);
