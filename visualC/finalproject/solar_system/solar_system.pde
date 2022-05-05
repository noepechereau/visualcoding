Planet sun ;
Star2[] stars = new Star2[400];


float r ;
float g ;
float b ;


void setup() {
  frameRate(60) ;
  size( 1300, 1000) ;
  smooth();
  stroke(255);
  strokeWeight(5);
  for (int i=0; i<stars.length; i++)
    stars[i] = new Star2();
  sun = new Planet(100, 0, 0);
  //sun.spawnMoons(5,0);
  r = g = b = 0 ;
  sun.spawnMoons(3, 0);
  sun.distance = 1000 ;
}


void draw () {
  background(r, g, b);
  // Draw all stars wrt center of screen
  translate(0.5*width, 0.5*height);

  // Update and draw all stars
  for (int i=0; i<stars.length; i++) {
    stars[i].update();
    stars[i].draw();
  }
  if ( frameCount > 240 ) {
    sun.show();
    sun.orbit();
    if (sun.distance != 0 ) {
      sun.distance -= 1;
    }
    if (sun.distance == 0 ) {
      if ( sun.radius != 200 ) {
        sun.radius += 0.5 ;
        //delay(300);
      }
      if ( sun.radius == 200 ) {
        sun.popLevel() ;
      }
    }
    if ( frameCount > 2150 ) {
       sun.radius -= 1 ;
      if ( sun.radius <= 2) {
        sun.radius = 0 ;
      }
    }
  }
  //zoom
  /*
      sun.radius += 0.5 ;
   for (int i = 0; i < sun.planets.length; i++) {
   sun.planets[i].distance += 1 ;
   circle(0,0,50);
   }
   */
}
