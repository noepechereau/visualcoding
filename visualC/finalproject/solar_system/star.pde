class star {
  float x;
  float y;
  float r ;
  float g ;
  float b ;
  
  
  star(float _x, float _y) {
    x = _x ;
    y = _y ;
    r = random(0,255) ;
    g = random(0,255) ;
    b = random(0,255) ;
  }
  
  void draw () {
    push();
    translate(x, y); // center of the star
    fill(r,g,b);
    beginShape();
    vertex(0, -10);
    vertex(2.8, -4);
    vertex(9.4, -3);
    vertex(4.6, 1.4);
    vertex(5.8, 8);
    vertex(0, 5);
    vertex(-5.8, 8);
    vertex(-4.6, 1.4);
    vertex(-9.4, -3);
    vertex(-2.8, -4);
    endShape(CLOSE);
    translate(0, 0);
    pop();
 }
  
}
