void brush1(float x,float y, float px, float py, float lineWidth) {
  strokeWeight(lineWidth);
  ellipse(x,y,px,py); 
  
  return;
}


void brush2(float x,float y, float px, float py, float lineWidth) {
  strokeWeight(lineWidth);
  pushMatrix();
  translate(x,y);
  rotate(random(px));
  rect(0+random(50),0+random(50),10,10); 
  popMatrix();
  return;
}

void brush3(float x,float y, float px, float py, float lineWidth) {
  strokeWeight(lineWidth);
  pushMatrix();
  translate(x,y);
  rotate(random(px));
  line(0+random(50),0+random(50),0,0);
  rotate(random(px));
  line(0+random(50),0+random(50),0,0);
  rotate(random(px));
  line(0+random(50),0+random(50),0,0);
  popMatrix();

  return;
}

void brush4(float x,float y, float px, float py, float lineWidth) {
  strokeWeight(lineWidth);
  line(px,py,x,y);
  /* The following line is a repeat. BUG!  
 line(px,py,x,y); 
  */
  line(width-px,py,width-x,y);
  line(px, height-py,x, height-y);
  line(width-px,height-py,width-x, height-y);
  return;
}

void brush5(float x,float y, float px, float py, float lineWidth) {
  strokeWeight(lineWidth);
  line(px,py,x,y);
  line(width-px,py,width-x,y);
  line(px,height-py,x, height-y);
  line(width-px, height-py, width-x, height-y);
  line(width-py, px,  width-y, x);
  line(py,px, y, x);
  line(width-py, height-px, width-y, height-x);
  line( py, height-px, y, height-x);
  return;
}

void brush6(float x,float y, float px, float py, float lineWidth) {
  strokeWeight(lineWidth);
  px=px+random(50);
  py=py+random(50);
  ellipse(x,y,px,py);
  ellipse(width-x,y,px,py);
  ellipse(x, height-y,px,py);
  ellipse(width-x, height-y,px,py);
  ellipse( width-y, x,px,py);
  ellipse( y, x,px,py);
  ellipse( width-y, height-x,px,py);
  ellipse( y, height-x,px,py);  
  return;
}

void brush7(float x,float y, float px, float py, float lineWidth) {
  strokeWeight(lineWidth);
  line(px,py,x,y);
  line(width-px,py,width-x,y);
  return;
}
