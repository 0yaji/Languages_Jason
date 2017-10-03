// jrodgers "LE CHAT NOIR"

// variables for later, to make his pupils follow the mouse
float ellipse_left=275;
float ellipse_right=525;

// my canvas size and color (black)
void setup () {
  size (800, 600);
  background (0);
}

// green eyes positioning, sans-outline
void draw () {
  fill (0, 255, 0);
  noStroke ();
    ellipse (275, 450, 180, 180);
    ellipse (525, 450, 180, 180);
    fill (0);
    ellipse (ellipse_left, 450, 40, 180);
    ellipse (ellipse_right, 450, 40, 180);
    frameRate (60);
 
// if statement makes eyes track mouse right
    if (mouseX >= 615){
    ellipse_left = ellipse_left +1;
    ellipse_right = ellipse_right +1;   
    }
    
// if stateemnt makes eyes track mouse left
     if (mouseX <= 185){
     ellipse_left = ellipse_left -1;
     ellipse_right = ellipse_right -1; 
    }
    
// pupils are limited from tracking mouse off the eyes
    ellipse_left = constrain (ellipse_left, 215, 335);
    ellipse_right = constrain (ellipse_right, 465, 585); 
}

// mouse click makes eyes "blink" with full screen flash of black
void mouseClicked () {
  frameRate (2.5);
  background (0);
}