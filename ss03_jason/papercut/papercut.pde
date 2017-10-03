// jrodgers "PAPERCUT"

// variable coordinates for my rollover box
int x = 400;
int y = 0;
int land = 400;
int port = 600;

// create canvas, slow down speed of animation, black background
void setup () {
  size (800, 600);
  frameRate (3);
  background (0);
}

// create invisible rollover box encompassing entire right half of canvas 
void draw () {
noStroke();
noFill();
  rect(x, y, land, port);

// create triangles with outlines when mouse rolls over screen left
// create triangles with no outlines when mouse rolls over screen right
  if (mouseX > x && mouseX < x + land && mouseY > y && mouseY < y + port) {

    noStroke();
  } else {
    stroke(3);
  }

// create randomized translucent blue-green triangles
  fill (0, random(200, 255), random(200, 255), 90);
  triangle (random(width), random(height), random(width), random(height), random(width), random(height));

// fill canvas with black if mouse moves far right or far left
  if ((mouseX<= 2)||(mouseX>=798)){
    background(0);
  } 
} 

// mouseclick/mouseX/mouseY determines one point of otherwise randomized white triangle
void mousePressed() {
  fill (255);
  triangle (mouseX, mouseY, random(width), random(height), random(width), random(height));
}