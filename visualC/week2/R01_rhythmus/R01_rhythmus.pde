//  Introduction to Processing by Robin Parmar. MIT License.


/*
	R01_rhythmus

	This sketch is a clone of Hans Richter's 1921 film "Rhythmus 21".

	The idea is to first create a simple, brute force sketch. 
	The focus is on understanding: 
	a) the requirements
	b) the code patterns
	c) the commands required 
*/

// constants help the code to be self-documenting
int WHITE = 100;
int BLACK = 0;

// how much x and y positions need to change each frame
// these are floats to avoid round-off errors
float xDelta, yDelta;

void setup() {
	size(600, 480);			// 4:3 ratio, similar to original film
	colorMode(RGB, 100);	// scale for convenience (default is 256)
	frameRate(24);			// 24 fps is appropriate for "film look"
    rectMode(CENTER);		// draw rectangles from center (not corner)
}

void draw() {
    // simplistic approach that performs action based on frame count  
    
	if (frameCount<54) {
	    background(WHITE);
		xDelta = width / 54.;
 		rect(width/2, height/2, xDelta*frameCount, height);
		fill(BLACK);

	} else if (frameCount>=54 && frameCount<107) {
        background(WHITE);
        xDelta = width / 54.;
        rect(width/2, height/2, xDelta*(frameCount-54.), height);
        fill(BLACK);

	} else {
        background(WHITE);
        noLoop();
	}
}
