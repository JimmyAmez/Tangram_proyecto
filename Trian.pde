class Trian extends Shape {
  color _hue;
  float _x1,_y1,_x2,_y2,_x3,_y3;

  Trian(color hue,float x1,float y1,float x2) {
    setHue(hue);
    _x1=x1;
    _y1=y1;
    _x2=x2;
  
  }

  @Override
  void aspect() {
    super.aspect();
    triangle(-(_y1/2),-(_x1/2),-(_y1/2), _x1/2,_y1/2,0.0);
  }
  

  color hue() {
    return _hue;
  }

  void setHue(color hue) {
    _hue = hue;
  }
}
