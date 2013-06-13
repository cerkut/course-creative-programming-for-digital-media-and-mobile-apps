
void setup()
{
  size(640, 480);
  background(255);  
}

void mouseDragged()
{
  line(pmouseX, pmouseY, mouseX, mouseY);
}
