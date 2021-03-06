// jrodgers "PROTO GAMECUBE" A tentative exploration of my final project build 

int x = 100;
float rotX, rotY;
PFont font;
PImage pong_bg;

// create canvas, initiate 3D mode, insert sample font, load background image
void setup () {
size(1280, 720, P3D);
font = createFont ("SourceCodePro-Regular.ttf", 50);
textFont (font);
pong_bg = loadImage ("pong_bg.jpg");
}

// display background, improve render of 3D cube, size & color text crt green, display message (in binary!)
void draw () {
  background (pong_bg);
  smooth();
  fill (0, 255, 0, 180);
  textSize (60);

// match reference coordinates of message to ellipse variable (done after testing placekeeper scrolling)
  text ("01001001 00100000 01100001 01101101 00100000 01100001 00100000 01110100 01101111 01110100 01100001 01101100 00100000 01101110 01101111 01101111 01100010", x, height/2);
  
// create ellipe as placekeeper (made invisible when no longer needed), scrolls right to left
  noFill ();
  noStroke ();
  ellipse (x, height/2, 50, 50);
  x = x - 1;
  
// when placekeeper reaches point offscreen, teleport back to original coordinates
  if (x < width -5440) {
   x = 0; 
  }
 
// establish central axis of vector graphic cube, place mid screen, rotate via mouse input
  stroke (255, 255, 255, 255);
  noFill ();
  //fill (255, 255, 255, 30);
  translate (width/2, height/2);
  rotateX (rotX);
  rotateY (rotY);
  box (410);
}

// set cube rotation speed
void mouseMoved () {
  rotX -= (mouseY - pmouseY) * 0.01;
  rotY -= (mouseX - pmouseX) * 0.01;
}