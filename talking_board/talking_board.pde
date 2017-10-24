// jrodgers "TALKING BOARD" (a mostly linear narrative) click and see 

String state = "pregame";

// Set multiple timers for game intro (pics are substituted for certain fonts from the previous iteration)
int pictimer1=5000;
int pictimer2=6000;
int pictimer3=6400;
int pictimer4=6800;
int pictimer5=7200;
int pictimer6=14200;
int pictimer7=17200;
int pictimer8=18700;
int helltimer = 2000;
int helltimer2=3000;
float r =0; 
int currentTime=0;
int restart=0;
// int n = int (random(6));
// String [] snark = {"This is snarky response #1", "This is snarky response #2", "This is snarky response #3", "This is snarky response #4", "This is snarky response #5", "This is snarky response #6"};

// establish global image variables
PImage hello;
PImage hello_ivory;
PImage pic01;
PImage pic02;
PImage pic03;
PImage pic04;
PImage pic05;
PImage pic06;
PImage pic07;
PImage pic08;
PImage hell;

// establish three global fonts
PFont voice;
PFont echo;
PFont macfont;
// LucidaGrande.ttf = the Processing default font

// set canvas size and load assorted images
void setup () {
  size (1275, 825);
  hello = loadImage ("hello.jpg");
  hello_ivory = loadImage ("hello_ivory.jpg");
  hell = loadImage ("hell.jpg");
  
    pic01 = loadImage ("tb_anonymous.png");
    pic08 = loadImage ("tb_invitation.png");
  pic07 = loadImage ("tb_onlyagame.png");
    pic06 = loadImage ("tb_titlepage.png");
  pic02 = loadImage ("tb_welcome00.png");
    pic03 = loadImage ("tb_welcome01.png");
  pic04 = loadImage ("tb_welcome02.png");
    pic05 = loadImage ("tb_welcome03.png");

// load assorted fonts
  voice = createFont("Holden.ttf", 78);
  echo = createFont("OldClaudeLPStd.otf", 24);
  macfont = createFont("LucidaGrande.ttf", 36);
  
  frameRate (12);
 
}

// Typesetting game intro
void draw () {
  fill (255, 0, 0);
  textAlign (CENTER);
  textSize (36);
currentTime = millis ();

// rules for pregame state
if (state == "pregame") {
   background (0);
   textFont (macfont);
   text ("CLICK to start app", width/2, height/2);
   restart = currentTime;
}

// multiple timers for image sequence in pic state
else if (state == "pics") {
  background (pic01);
if (currentTime - restart > pictimer1) {
  background(pic02);
}
if (currentTime - restart > pictimer2) {
  background(pic03);
} 
if (currentTime - restart > pictimer3) {
  background(pic04);
} 
if (currentTime - restart > pictimer4) {
  background(pic05);
} 
if (currentTime - restart > pictimer5) {
  background(pic06);
} 
if (currentTime - restart > pictimer6) {
  background(pic07);
} 
if (currentTime - restart > pictimer7) {
  background(pic08);
} 
 if (currentTime - restart > pictimer8) {
  state = "rsvp";
 }
} 

// create Y/N boxes in RSVP state
else if (state == "rsvp") {
  background (0);
  text ("RSVP?", width/2, height/2);


stroke (255,0,0);
strokeWeight (3);
noFill ();
rect (180, 275, 200, 75);
text ("YES", 280, 325);


stroke (255,0,0);
strokeWeight (3);
noFill ();
rect (895, 275, 200, 75);
text ("NO", 995, 325);

} 

// random snark state uses "blurb" function (selects one of "X"-many written stateemnts
else if (state == "random_snark") {
  background(0);
    blurb ();
    noLoop ();
    textSize (50);
    fill (255,0,0);
    text ("Someone really wants to communicate...", width/2, height/2 +150);

}

// blackout state creates a sky peppered with assorted, appearing and disappearing RSVPs
else if (state == "blackout"){    
    frameRate (15);
    textSize (random (12, 48));
    
 
    text ("RSVP?", random (width), random (height));
    
// mouse pointer has rotating RSVP attached (encourages player to click without listing the instruction )
    translate(mouseX, mouseY);
    rotate(r);
    textSize(60);
    text("RSVP?", 0, 0);
    r= r+ .07;

// screen redraw creates fadeaway effect for all RSVPs
    translate(-mouseX, -mouseY);
    noStroke();
    fill(0, 0, 0, 20);
    rect(0, 0, width, height);
    
}

// app titlepage state displays disclaimer fine print (intentionally difficult to read)
else if (state == "app_titlepage") {
    background (0);
    textSize (48);
    text ("CLICK to begin talking to the living...", width/2, height/2 +50);
    textSize (12);
    textAlign (CENTER);
    fill (255, 0, 0, 100);
    text ("TALKING BOARD © is offered to you conditioned upon your acceptance without modification of the terms, conditions, and notices contained herein.", width /2, height /2 +150);
    text ("TALKING BOARD 2.2 has been designed for the specific use of mobile applications. This disclaimer statement is governed by the laws of Summerland. You hereby consent to the exclusive jurisdiction and venue of the Courts of Summerland, in all disputes arising out of or relating to the use of this product. Use of this product is unauthorized in any jurisdiction that does not give effect to all provisions of these terms and conditions, including and without limitation to this paragraph.", width /2 -500, height /2 +161, 1000, 200);
    
    restart = currentTime;
    
}

// hello state displays ouija board and mouse-trailing reticule. short timer causes "o" to fade, then flicker
else if (state == "hello") {
    image (hello, 0, 0);
    fill (255, 0, 0, 35);
    ellipse (mouseX, mouseY, 100, 100);
    if (currentTime - restart > helltimer) {
      tint (255, 145);
  image (hell, 0, 0);
  if (currentTime - restart > helltimer2) {
      blinky ();
} 
    
}
}

// endgame state shows text which indicates the player goal has been reached (I also tried attaching a sound file here, to no avail)
 else if (state == "endgame") {
    background (0);
    textFont(voice);
    fill (255, 0 , 0);
    text ("EVERYONE IS HAUNTED NOW", width/2, height/2);
    textFont(echo);
    textSize (24);
    text ("CLICK to play again!", width/2, height/2 +150);
    
  }
}

//pressing the mouse is the trigger that starts the session
void mousePressed() {
  if (state == "pregame") {
    state = "pics";
  }

// rollovers for the RSVP state. conditions set for changing states, and a looping branch
else if (state == "rsvp") {
  
if (mouseX > 180 && mouseX < 380 && mouseY > 275 && mouseY < 350)
   state = "app_titlepage";
   
else if (mouseX > 895 && mouseX < 1095 && mouseY > 275 && mouseY < 350)
   state = "random_snark";
}
    
else if (state == "app_titlepage") { 
   state = "hello";
   
}
else if (state == "random_snark") {
  loop();
   state = "blackout";
   
}
else if (state == "blackout") {
   state = "rsvp";
   
}

// rollover coordinates trigger the endgame
else if (state == "hello") {
   if (mouseX > 420 && mouseX < 855 && mouseY > 0 && mouseY < 100)
   state = "endgame";
 }
   
// endgame loops back to pregame
else if (state == "endgame") {
    state = "pregame";
}
}

// rollover activates glowing "hello" on ouija board
void mouseMoved () {
  
 if (state == "hello") {
 if (mouseX > 420 && mouseX < 855 && mouseY > 0 && mouseY < 100)
image (hello_ivory, 0, 0);
}

}

// custom function oscillates between images so "hell" and "hello" flicker like a bad flourescent light
void blinky (){
  frameRate(10);
  int o = (int (random(2))) ;
 if (o == 1) {
   tint (255,145);
   image (hello, 0, 0);
}
 else if (o == 0) {
  tint (255, 125);
   image (hell, 0, 0);
}
}

// custom function produces one of "X" random sentences 
void blurb (){
  int rando = (int (random (1,8))) ;
  fill (219, 224, 215, 165); 
  textAlign (CENTER);
  textSize (36);
 
 if (rando == 1) {
   text ("Come out, come out, wherever you are!", width/2, height/2);
}

 else if (rando == 2) {
   text ("He who knows does not speak. He who speaks does not know.", width/2, height/2);
}

 else if (rando == 3) {
   text ("Should we ask your mommy if you can come out to play?", width/2, height/2);
}

 else if (rando == 4) {
   text ("But... But, somebody's WRONG on the internet!", width/2, height/2);
}

 else if (rando == 5) {
   text ("Then I'm definitely seeing a Yelp review in your future...", width/2, height/2);
}

 else if (rando == 6) {
   text ("Sad, so sad!!!", width/2, height/2);
}
else if (rando == 7) {
   text ("Limiting your screen time? Lame.", width/2, height/2);
}

}