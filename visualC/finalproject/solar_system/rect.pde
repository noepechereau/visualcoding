class Rect {
  float x ;
  float y ;
  float r ;
  float g ;
  float b ;

  float dimX ;
  float dimY ;



  Rect(float _x, float _y, float _dimX, float _dimY) {
    x =_x ;
    y = _y ;
    dimX = _dimX ;
    dimY = _dimY ;
  }

  void draw() {
    stroke(255) ;
    fill(r, g, b);
    rect(x, y, dimX, dimY);
  }
}
