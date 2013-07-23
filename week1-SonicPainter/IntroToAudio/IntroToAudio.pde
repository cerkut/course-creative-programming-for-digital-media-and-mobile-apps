Maxim maxim;
AudioPlayer player;

void setup()
{
  size(640, 960);
  
  background(0);
  maxim = new Maxim(this);
  player = maxim.loadFile("mykbeat.wav");
  player.setLooping(false);
 
}

void draw()
{
// code that happens every frame
}

void mouseDragged()
{
// code that happens when the mouse moves
// with the button down
}

void mousePressed()
{

// code that happens when the mouse button
// is pressed
  player.cue(0);
  player.play();
}

void mouseReleased()
{
// code that happens when the mouse button
// is released
}

