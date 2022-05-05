PImage img;


boolean negate;

void setup () {
  size(800,800);
  colorMode(RGB,1);
  
  img = loadImage("flower.jpg");
  
  //positive();
  positive() ;
}


void draw() {}

void positive() {
 image(img, 0, 0) ; 
}

//display the inverse of the image 
void negative () {
  color c ;
  
 // treat image as a 20 array 
  for ( int i = 0 ;  i < img.width ; i ++ ) {
    for ( int j = 0 ; j < img.height ; j ++ ) {
     c = img.get(i,j) ;
     
     set(i, j , color(1.-red(c),1.-green(c),1.-blue(c))) ;
    }
  }     
}

void negative2 () {
  color c ;
  
  loadPixels();
  
  for ( int i = 0 ; i < pixels.length ; i ++) {
    c = pixels[i] ;
    pixels[i] = color(1.-red(c),1.-green(c),1.-blue(c));
  }
  
  updatePixels();

}

void mousePressed() {
 negate = !negate ;
 
 if (negate) {
   negative2();
 }
 else
 {
   positive();
 }
  
}
