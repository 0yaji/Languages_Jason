<<<<<<< HEAD
// jrodgers "TALKING BOARD" click and see

String state = "pregame";

// set timers for invitation, RSVP & replying "no"
int timer1= 3000; 
int timer2= 6000;
int timer3= 7000;
int currentTime=0;
int restart=0;

// failed attempt to repeatedly randomize invitation response of "NO"
// 2 lines of code from Abe Pazos tutorial "Learn programming 54: Infinite Forest" 
int n = int (random(6));
String [] snark = {"This is snarky response #1", "This is snarky response #2", "This is snarky response #3", "This is snarky response #4", "This is snarky response #5", "This is snarky response #6"};

// size canvas & add images (default board & glowing 'hello')
PImage hello;
PImage hello_ivory;


void setup () {
  size (1275, 825);
  hello = loadImage ("hello.jpg");
  hello_ivory = loadImage ("hello_ivory.jpg");
  frameRate (12);

}

// red text, aligned to center
void draw () {
  fill (255, 0, 0);
  textAlign (CENTER);
  textSize (36);
currentTime = millis ();

// state: player prompted to launch app
if (state == "pregame") {
   background (0);
   text ("CLICK to start app", width/2, height/2);
   restart = currentTime;
}
  
// state: timer activates title page & exposition about app
else if (state == "intro") {
  background (0);
  textSize (48);
  text ("Welcome to Talking Board 2.2", width/2, height/2);
  textSize (36);
  text ("A digital intermediary between spirits and humans...", width/2, height/2 +100);

if (currentTime-restart > timer1){
  state = "invite";
}
} 

// state: alerts player of invite, presents RSVP option
else if (state == "invite") {
  background (0);
  text ("You've recieved an invitation", width/2, height/2 + 100);

if (currentTime - restart > timer2) {
  state="rsvp";
} 
}

else if (state == "rsvp") {
  background (0);
  text ("RSVP?", width/2, height/2);

// draw boxes for "Y/N" player interactions
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

restart = currentTime;
} 

// state: goads player into accepting invite, blackout timer makes player wait if response is 'NO'
else if (state == "random_snark") {
    background (0);
    text (snark[n], width/2, 100);
    textSize (50);
    text ("Someone really wants to communicate...", width/2, height/2 +50);
    
if (currentTime-restart > timer1) {
  state = "blackout";
}
}

else if (state == "blackout"){
    background (0);
    if (currentTime-restart > timer3){
    state = "rsvp";
}
}

// state: displays foreshadowing hint, invites player to begin
else if (state == "app_titlepage") {
    background (0);
    textSize (48);
    text ("It's only a game - isn't it?", width/2, height/2 +50);
    textSize (24);
    text ("CLICK to begin talking to the living...", width/2, height/2 +150);
}

// planchette reticule tracks mouse pointer across board
else if (state == "hello") {
    background (hello);
    fill (255, 0, 0, 35);
    ellipse (mouseX, mouseY, 100, 100);
    
}

// display epilog and option to restart by clicking
 else if (state == "endgame") {
    background (255, 0, 0);
    textSize (50);
    fill (0);
    text ("EVERYONE IS HAUNTED NOW", width/2, height/2);
    textSize (24);
    text ("click to play again!", width/2, height/2 +50);
    
  }
}


void mousePressed() {
  if (state == "pregame") {
    state = "intro";
  }

// clickable boxes: "YES" progressses game; "NO" stops progress before looping back; "HELLO" ends game
else if (state == "rsvp") {
  
if (mouseX > 180 && mouseX < 380 && mouseY > 275 && mouseY < 350)
   state = "app_titlepage";
   
else if (mouseX > 895 && mouseX < 1095 && mouseY > 275 && mouseY < 350)
   state = "random_snark";
}
    
else if (state == "app_titlepage") {
   state = "hello";
   
}
  
else if (state == "hello") {
   if (mouseX > 420 && mouseX < 855 && mouseY > 0 && mouseY < 100)
   state = "endgame";
 }
   
else if (state == "endgame") {
    state = "pregame";
}
}

// rolling over "HELLO" causes ouija board letters to glow
void mouseMoved () {
  
 if (state == "hello") {
 if (mouseX > 420 && mouseX < 855 && mouseY > 0 && mouseY < 100)
background (hello_ivory);
}

=======
// jrodgers "TALKING BOARD" click and see

String state = "pregame";

// set timers for invitation, RSVP & replying "no"
int timer1= 3000; 
int timer2= 6000;
int timer3= 7000;
int currentTime=0;
int restart=0;

// failed attempt to repeatedly randomize invitation response of "NO"
// 2 lines of code from Abe Pazos tutorial "Learn programming 54: Infinite Forest" 
int n = int (random(6));
String [] snark = {"This is snarky response #1", "This is snarky response #2", "This is snarky response #3", "This is snarky response #4", "This is snarky response #5", "This is snarky response #6"};

// size canvas & add images (default board & glowing 'hello')
PImage hello;
PImage hello_ivory;


void setup () {
  size (1275, 825);
  hello = loadImage ("hello.jpg");
  hello_ivory = loadImage ("hello_ivory.jpg");
  frameRate (12);

}

// red text, aligned to center
void draw () {
  fill (255, 0, 0);
  textAlign (CENTER);
  textSize (36);
currentTime = millis ();

// state: player prompted to launch app
if (state == "pregame") {
   background (0);
   text ("CLICK to start app", width/2, height/2);
   restart = currentTime;
}
  
// state: timer activates title page & exposition about app
else if (state == "intro") {
  background (0);
  textSize (48);
  text ("Welcome to Talking Board 2.2", width/2, height/2);
  textSize (36);
  text ("A digital intermediary between spirits and humans...", width/2, height/2 +100);

if (currentTime-restart > timer1){
  state = "invite";
}
} 

// state: alerts player of invite, presents RSVP option
else if (state == "invite") {
  background (0);
  text ("You've recieved an invitation", width/2, height/2 + 100);

if (currentTime - restart > timer2) {
  state="rsvp";
} 
}

else if (state == "rsvp") {
  background (0);
  text ("RSVP?", width/2, height/2);

// draw boxes for "Y/N" player interactions
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

restart = currentTime;
} 

// state: goads player into accepting invite, blackout timer makes player wait if response is 'NO'
else if (state == "random_snark") {
    background (0);
    text (snark[n], width/2, 100);
    textSize (50);
    text ("Someone really wants to communicate...", width/2, height/2 +50);
    
if (currentTime-restart > timer1) {
  state = "blackout";
}
}

else if (state == "blackout"){
    background (0);
    if (currentTime-restart > timer3){
    state = "rsvp";
}
}

// state: displays foreshadowing hint, invites player to begin
else if (state == "app_titlepage") {
    background (0);
    textSize (48);
    text ("It's only a game - isn't it?", width/2, height/2 +50);
    textSize (24);
    text ("CLICK to begin talking to the living...", width/2, height/2 +150);
}

// planchette reticule tracks mouse pointer across board
else if (state == "hello") {
    background (hello);
    fill (255, 0, 0, 35);
    ellipse (mouseX, mouseY, 100, 100);
    
}

// display epilog and option to restart by clicking
 else if (state == "endgame") {
    background (255, 0, 0);
    textSize (50);
    fill (0);
    text ("EVERYONE IS HAUNTED NOW", width/2, height/2);
    textSize (24);
    text ("click to play again!", width/2, height/2 +50);
    
  }
}


void mousePressed() {
  if (state == "pregame") {
    state = "intro";
  }

// clickable boxes: "YES" progressses game; "NO" stops progress before looping back; "HELLO" ends game
else if (state == "rsvp") {
  
if (mouseX > 180 && mouseX < 380 && mouseY > 275 && mouseY < 350)
   state = "app_titlepage";
   
else if (mouseX > 895 && mouseX < 1095 && mouseY > 275 && mouseY < 350)
   state = "random_snark";
}
    
else if (state == "app_titlepage") {
   state = "hello";
   
}
  
else if (state == "hello") {
   if (mouseX > 420 && mouseX < 855 && mouseY > 0 && mouseY < 100)
   state = "endgame";
 }
   
else if (state == "endgame") {
    state = "pregame";
}
}

// rolling over "HELLO" causes ouija board letters to glow
void mouseMoved () {
  
 if (state == "hello") {
 if (mouseX > 420 && mouseX < 855 && mouseY > 0 && mouseY < 100)
background (hello_ivory);
}

>>>>>>> 7209da64219cd890ee82d297aa8cfde339ad564a
}