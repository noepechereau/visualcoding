//  Introduction to Processing by Robin Parmar. MIT License.

/*
    R02_rhythmus
 
 This sketch is a clone of Hans Richter's 1921 film "Rhythmus 21".
 
 How can we generalise the approach taken in the first version?
 
 How can we hide (encapsulate) information that we don't need to see?
 
 How can we provide a more general solution to the problem?
 */

// colour constants
int WHITE = 100;
int BLACK = 0;

// useful variable that will be used multiple times
boolean alive;

Elements rhythmus;

void setup() {
  size(600, 480);         // 4:3 ratio, similar to original film
  colorMode(RGB, 100);    // scale for convenience (default is 256)
  frameRate(24);          // 24 fps is appropriate for "film look"
  rectMode(CENTER);       // draw rectangles from center (not corner)

  rhythmus = new Elements() ;
}

void draw() {
  // switch is more compact than if/else when comparing the same value
  switch(frameCount) {
  case 1:
    // WHITE
    rhythmus.add(width/2, height/2, 430, height, 0, height, 49, BLACK);
    break;
  case 53:
    rhythmus.add(width/2, height/2, 0, height, width, height, 54, BLACK);
    break;
  case 107:
    rhythmus.add(width/2, height/2, 0, height, width, height, 41, BLACK);
    break;
  case 151:
    rhythmus.add(224, 285, 448, 570, 0, 0, 99, WHITE);
    break;
  case 251:
    rhythmus.add(224, 285, 448, 570, 100, 110, 50, WHITE);
    break;
  case 305:
    rhythmus.add(width/2, height/2, width, 0, width, height, 32, WHITE);
    break;
  case 341:
    // WHITE
    rhythmus.add(width/2, height/2, width, 0, width, height, 45, BLACK);
    break;
  case 395:
    rhythmus.add(width/2, height/2, width, 0, width, height, 38, BLACK);
    break;
  case 443:
    rhythmus.add(width/2, height/2, width, 0, width, height, 35, BLACK);
    break;
  case 485:
    // BLACK
    // three at once
    sh1 = new Shape(102, 256, 132, 428, 0, 0, 70, WHITE);
    sh2 = new Shape(525, 145, 150, 290, 0, 0, 70, WHITE);
    sh3 = new Shape(525, 410, 150, 120, 0, 0, 22, WHITE);
    break;
  case 555:
    background(BLACK);
    noLoop();
    break;
  }

  // background colour is switched here
  // why can't we do this in the switch structure above?
  if (frameCount<151 || (frameCount>341 && frameCount<485) ) {
    background(WHITE);
  } else {
    background(BLACK);
  }

  rhythmus.update;
}
