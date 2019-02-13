class mandelbrot
{
  int exponent;

  float h;
  float w;

  mandelbrot()
  {
    exponent = 2; 
    w = 4;
    h = 4;
  }
  
  void run()
  {
    int maxiterations = 100;

    loadPixels();
    for (int x = 0; x < width; x++) 
    {
      for (int y = 0; y < height; y++) 
      {

        float real = map(x, 0, width, -w/2, w/2);
        float imaginary = map(y, 0, width, -h/2, h/2);

        Complex z = new Complex(real, imaginary);

        Complex c = z;

        float n = 0;

        while (n < maxiterations) {
          z = z.pow(exponent).add(c);
          if (z.magSquared() > 16) 
          {
            break;
          }
          n++;
        }

        int pix = x + y * width;

        if (n == maxiterations) 
        {
          pixels[pix] = color(0);
        } else
        {
          float hu = sqrt(n / maxiterations);
          pixels[pix] = color(hu, 255, 255);
        }
      }
    }
    updatePixels();
  }
}
