class MyConverter{
  static double C2F(double value){
    return value* 1.8 + 32;
  }
  static double C2K(double value){
    return value+ 273.15;
  }
  static double F2C(double value){
    return (value - 32) / 1.8;
  }
  static double F2K(double value){
    return (value + 459.67) * 1.8;
  }
  static double K2C(double value){
    return value - 273.15;
  }
  static double K2F(double value){
    return (value * 1.8) - 459.67;
  }
}