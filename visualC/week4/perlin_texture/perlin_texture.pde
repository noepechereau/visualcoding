/*
  Perlin texture demo
*/


float v ;
float t = 0;

float scale = 0.01 ;
float delta = 0.01 ;


void setup() 
{
  size(800,800);
  colorMode(RGB,1.);
  noStroke();
  
  
}

void draw(){
  
  for ( int i = 0 ; i < width ; i += 4 ) 
  {
    for ( int j = 0 ; j < height ; j += 4) 
    {
      v = noise(t+i*scale,j*scale);
      
      fill(v,0,1-v);
      circle(i,j,6) ;
    }
  }
  t += delta ;
}
