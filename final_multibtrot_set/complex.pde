class Complex
{
  float real;
  float imaginary;

  Complex(float real, float imaginary) 
  {
    this.real = real;
    this.imaginary = imaginary;
  }

  Complex multiply(Complex other) 
  {
    return new Complex(real * other.real - imaginary * other.imaginary, real * other.imaginary + other.real * imaginary);
  }

  Complex add(Complex other) 
  {
    return new Complex(real + other.real, imaginary + other.imaginary);
  }

  float magSquared() 
  {
    return real * real + imaginary * imaginary;
  }

  Complex pow(int n) 
  {
    Complex result = this;
    for (int i = 1; i < n; i++) 
    {
      result = result.multiply(this);
    }
    return result;
  }
}
