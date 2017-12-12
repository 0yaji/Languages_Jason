// jrodgers "TOAST" sit back enjoy a soothing glass of bubbly
particle[] pl= new particle[500];
// establish four arrays
Cloud[] flakes = new Cloud[100];
Cloud[] powder = new Cloud[100];
Cloud[] foam = new Cloud[100];
Cloud[] suds = new Cloud[125];

//establish background & foreground images
PImage backdrop;
PImage cutout;

// activate sound function
import processing.sound.*; 
SoundFile song; 

// set canvas size, activate processing 2D engine
// smooth animation, set parameters for all random bubbles
void setup () {
 colorMode(HSB,100);
for (int i=0;i<500;i++){
pl[i]= new particle();
}

  size (720, 960,P2D);
  

  
    smooth();
  for (int i=0; i<flakes.length; i++) {
   flakes[i] = new Cloud(random(width), random(height), #FFFFFF);
  }
  for (int i=0; i<powder.length; i++) {
   powder[i] = new Cloud(random(width), random(height), #FFFFFF);
  }
  for (int i=0; i<foam.length; i++) {
   foam[i] = new Cloud(random(width), random(height), #FFFFFF);
  }
  for (int i=0; i<suds.length; i++) {
   suds[i] = new Cloud(random(width), random(height), #FFFFFF);
  }
  
// load background and foreground images
  backdrop = loadImage ("full.png");
  cutout = loadImage ("empty.png");
  
// load fizzy champagne and crystal glass chime
  song = new SoundFile(this, "fizz.wav"); 
  song.play(); 
  song = new SoundFile(this, "ding.mp3");

}


// display background
void draw(){
 background (backdrop);

  
// slow animation to approximate champagne bubble speed
// randomize apearance & angle direction of all bubbles
  frameRate(18); 
  
for(int i=0;i<200;i++){
stroke(0,150);
pl[i].show();
pl[i].update(); 
 } 
 
  for (int i=0; i<flakes.length; i++) {
    flakes[i].flurry((i+10)/15);
  }
  for (int i=0; i<powder.length; i++) {
    powder[i].blurry((i+10)/10);
  }
  for (int i=0; i<foam.length; i++) {
    foam[i].frothy(int(random(1, 5)));
}
  for (int i=0; i<suds.length; i++) {
    suds[i].bubbly(int(random(1,3)));
  
// display gobo for bubble framing    
  image(cutout, 0, 0);
}
}

// champagne glass chimes with mouse click
void mouseClicked () {
  song.play(); 
}