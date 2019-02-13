mandelbrot s;
void setup() 
{
  //fullScreen();
  size(800, 800);
  colorMode(HSB, 1);
  s = new mandelbrot();
  noLoop();
}

void draw() 
{
   s.run();
}

void mousePressed()
{
  //s.exponent++;
  s.w /= 1.5;
  s.h /= 1.5 ;
 
  redraw();
}
