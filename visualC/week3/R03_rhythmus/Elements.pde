// objects factory for shapes

class Elements {
  Shape[] shapes;

  Elements() {
    shapes = new Shape[5];
    for ( int i = 0; i < shapes.length; i++ )
    {
      shapes[i] = null ;
    }
  }

  void add(int x_, int y_, int w_, int h_, int w2_, int h2_, int a_, int c_) {
    for ( int i = 0; i < shapes.length; i++ ) {
      if (shapes[i] == null )
      {
        shapes[i] = new Shape(x_, y_, w_, h_, w2_, h2_, a_, c_);
        break ;
      }
    }
  }
  void uptdate()
  {
    boolean alive;
    
    for ( int i = 0; i < shapes.length; i++ ) {
      if (shapes[i] != null) {
        alive = shapes[i].update();
        if (!alive) {
          shapes[i] = null;
        }
      }
    }
  }
