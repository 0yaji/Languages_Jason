size (1080, 720);
background(200);

// large square
strokeWeight (4);
rect (265, 150, 550, 550);

// large circle
fill(255,255,255,45);
ellipse (540, 370, 660, 660);

// left rear leg
strokeWeight (2);
quad (580, 441, 541, 474, 547, 702, 566, 699);

// right rear leg
quad (500, 441, 539, 474, 533, 702, 514, 699);

// body
rect (500, 275, 79, 200, 12);

//right front leg
quad (500, 441, 534, 474, 403, 673, 384, 665);

//left front leg
quad (580, 441, 546, 474, 677, 673, 696, 665);

// right rear arm
quad (268, 280, 500, 315, 510, 275, 276, 275);

// right front arm
quad (288, 160, 500, 315, 510, 275, 295, 155);

// left rear arm
quad (569, 275, 804, 275, 812, 280, 579, 315);

//left front arm
quad (569, 275, 785, 155, 792, 160, 579, 315);

// head

triangle (540, 290, 480, 160, 600, 160);

// crosshairs
stroke (0, 0, 0, 60);
line (265, 150, 815, 700);

line (815, 150, 265, 700);

line (210, 370, 870, 370);

line (540, 40, 540, 700);

// junk
stroke (0, 0, 0);
fill (255, 255, 255);
rect (533, 465, 15, 30, 12);

//right eye
fill(0,0,0);
arc (520, 190, 25, 45, QUARTER_PI, PI, CHORD);

//left eye
fill(0,0,0);
arc (560, 190, 25, 45, 0, PI-QUARTER_PI, CHORD);