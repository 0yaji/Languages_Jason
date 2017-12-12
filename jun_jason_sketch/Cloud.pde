// This cloud class was originally supposed to define snowflakes in a snowglobe
// but the patterns made by the placeholding ellipses were so warmly soothing 
// they instead made me think of New Year's cghampagne. So I changed the project

class Cloud {
  float x;
  float y;
  color c;
  
  Cloud(float flakex, float flakey, color flakecolor) {
    x = flakex;
    y = flakey;
    c = flakecolor;
  }

// set X & Y borders for better density within the glass of each bubble array
  void flurry(float speed) {
    y = y - speed;
    if (y <220) {
      y = height -100;
    }
    
    x = x + speed/2; 
    if (x > width-125) { 
      x = 125; 
    } 
    
    stroke (#6a4d1f); // maybe
    fill (#ffe731);    
    ellipse(x, y, 11, 11);
  }
   void blurry(float speed) {
    y = y - speed;
    if (y <220) {
      y = height -100;
    }
    
    x = x - speed/2; 
    if (x < 125) { 
      x = width-125; 
    } 
    
    fill (#fec129);
    ellipse(x, y, 8, 8);
  }
  
  void frothy(float speed) {
    y = y - speed;
    if (y <160) {
      y = height -750;
    }
    
    x = x + speed/2; 
    if (x > width-230) { 
      x = 125; 
    } 
  
// champagne liquid topped by white outlined and solid white bubbles
    stroke (#FFFFFF);
      noFill ();
//    fill (#fcf6d4);
//      fill (#000000);
    ellipse(x, y, 4, 4);
  }
  
   void bubbly(float speed) {
    y = y - speed;
    if (y <180) {
      y = height -750;
    }
    
    x = x - speed/2; 
    if (x <125) { 
      x = width-230; 
    } 
    
    stroke (#FFFFFF);
    fill (#FFFFFF);
    ellipse(x, y, 4, 4);
  }
}