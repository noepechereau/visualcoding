class Planet {
  float radius;
  float distance;
  Planet[] planets;
  float angle;
  float orbitspeed;
  float r ;
  float g ; 
  float b ;

  Planet(float radiu, float d, float o) {
    radius = radiu;
    distance = d;
    angle = random(TWO_PI);
    orbitspeed = o;
    //println(angle);
    r = random(0,255);
    g = random(0,255);
    b = random(0,255) ;
  }
  
  void setColor(float _a, float _b, float _c) {
   r = _a;
   g = _b;
   b = _c;
  }
  
    

  void orbit() {
    angle = angle + orbitspeed;
    if (planets != null) {
      for (int i = 0; i < planets.length; i++) {
        planets[i].orbit();
      }
    }
  }

  void spawnMoons(int total, int level) {
    planets = new Planet[total];
    for (int i = 0; i < planets.length; i++) {
      float rad = radius/2;
      float d = random(100,200);
      float o = random(-0.05, 0.05);
      planets[i] = new Planet(rad, d, o);
      if (level < 3) {
        if ( level == 0) {
          setColor(117,40,205) ;
        }
        if ( level == 1) {
          setColor(238,37,84) ;
        }
        if ( level == 2) {
          setColor(128,128,128) ;
        }
        planets[i].spawnMoons(1, level+1);
      }
    }
  }
  
  void popLevel() {
    for ( int i = 0 ; i < planets.length ; i ++ ) {
       planets[i].distance += 1 ; 
    }
  }

  void show() {
    pushMatrix();
    stroke(255);
    fill(r,g,b);
    rotate(angle);
    translate(distance,distance);
    ellipse(0, 0, radius*2, radius*2);
    if (planets != null) {
      for (int i = 0; i < planets.length; i++) {
        planets[i].show();
      }
    }
    popMatrix();
  }
}
 
