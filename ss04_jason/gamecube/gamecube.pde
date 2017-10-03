int x = 100;
float rotX, rotY;
PFont font;
PImage pong_bg;

// create canvas, initiate 3D mode, insert sample font
void setup () {
size(1280, 720, P3D);
font = createFont ("SourceCodePro-Regular.ttf", 50);
textFont (font);
pong_bg = loadImage ("pong_bg.jpg");
}

void draw () {
  background (pong_bg);
  smooth();
  fill (0, 255, 0, 180);
  textSize (60);
  text ("01001001 00100000 01100001 01101101 00100000 01100001 00100000 01110100 01101111 01110100 01100001 01101100 00100000 01101110 01101111 01101111 01100010", x, height/2);
  
  noFill ();
  noStroke ();
  ellipse (x, height/2, 50, 50);
  x = x - 1;
  
  if (x < width -5440) {
   x = 0; 
  }
  
  stroke (255, 255, 255, 255);
  noFill ();
  //fill (255, 255, 255, 30);
  translate (width/2, height/2);
  rotateX (rotX);
  rotateY (rotY);
  box (410);
  
 
}

void mouseMoved () {
  rotX -= (mouseY - pmouseY) * 0.01;
  rotY -= (mouseX - pmouseX) * 0.01;
}