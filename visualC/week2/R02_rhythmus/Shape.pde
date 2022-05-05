/*
	Shape
    A special class of rectangles in which the center point 
    is fixed, but size can change in various ways.
*/

class Shape {
    int x, y;					// center coordinates
    int w, h;					// current width and height
	int colour;					// colour (0-100)

    // lifespan, in frames
    int age;            

 	// change per frame, in pixels
  	float wDelta, hDelta;

	// I adopt a naming convention for arguments to a function/method
	// that makes it obvious which property each corresponds to.
	Shape(int x_, int y_, int w_, int h_, int w2_, int h2_, int a_, int c_) {
		x = x_;
		y = y_;
		w = w_;
    	h = h_;
		age = a_;
		colour = c_;

		// w2, h2 are the destination dimensions
		// if we have 200 pixels to traverse and 50 frames to do it in
		// then we need to change 4 pixels per frame
        wDelta = float(w2_-w) / float(age);
        hDelta = float(h2_-h) / float(age);
	}
    
    // displays Shape, then decrements age
    boolean update() {
        render();
        
    	// age our shape and check to see if it's dead
        age--;      
        return age != 0;
	}

	// display the Shape 
    void render() {
        // increment width and height
        w += int(wDelta);
        h += int(hDelta);
        
        rect(x, y, w, h);
        fill(colour);
    }
}
