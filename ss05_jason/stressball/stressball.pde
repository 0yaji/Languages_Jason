// jrodgers "STRESSBALL" a Powerball-type Lottery  &  emoji randomizer- click to play


// Establish Jackpot background, emojis, font for numbers
PImage backdrop;

PImage[] emoji = new PImage[6];

int someEmoji = 0;

PFont bingo;

// Establish  array for all five lotto balls
int[] balls = new int[70];
int nb=0;
int nb2=0;
int nb3=0;
int nb4=0;
int nb5=0;

// Set canvas size, load jackpot image, load font for numbers & emoji faces for array
void setup () {
  size (1280, 720);
  backdrop = loadImage ("pingpong.jpg");
  bingo = createFont("HelveticaNeueLT.otf", 120);
  
  emoji[0] = loadImage ("ball.png");
  emoji[1] = loadImage ("cool.png");
  emoji[2] = loadImage ("sad.png");
  emoji[3] = loadImage ("shock.png");
  emoji[4] = loadImage ("smitten.png");
  emoji[5] = loadImage ("wary.png");
  
  for(int nb = 1; nb < balls.length; nb++) {
  balls [nb] = nb;
}
}

// place image, place font, color numbers black
void draw () {
    image (backdrop, 0, 0);
    textFont(bingo);
    fill (0);
    
// lotto ball coordinates go here
    text (balls[nb], 148, 335);
    text (balls[nb2], 322, 335);
    text (balls[nb3], 498, 335);
    text (balls[nb4], 672, 335);
    text (balls[nb5], 846, 335);

// emoji pic array coordinates go here 
    imageMode(CENTER);
    image(emoji[someEmoji], 1079, 289);
    imageMode(CORNER);
}

// clicking the mouse randomizes lotto balls and emoji faces
 void mousePressed(){
  someEmoji=int(random(emoji.length));
  nb = int(random(1,70));
  nb2 = int(random(1,70));
  nb3 = int(random(1,70));
  nb4 = int(random(1,70));
  nb5 = int(random(1,70));
}   


    