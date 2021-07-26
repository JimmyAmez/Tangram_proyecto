class Rhomb extends Shape {
  color _hue;
  float _x1,_y1,_x2,_y2,_x3,_y3,_x4,_y4;

  Rhomb(color hue,float x1,float y1,float x2,float y2,float x3,float y3,float x4,float y4) {
    setHue(hue);
    _x1=x1;
    _y1=y1;
    _x2=x2;
    _y2=y2;
    _x3=x3;
    _y3=y3;
    _x4=x4;
    _y4=y4;
    
  }

  @Override
  void aspect() {
    rectMode(CENTER);
    quad( _x1,_y1,_x2,_y2,_x3,_y3,_x4,_y4);
  }
  int reflection() {
    return _hue;
  }

  void setReflection() {
    
    float tempX1,tempY1;
    
    tempX1=_y1;
    tempY1=_y2;
    
    _y1=_y4;
    _y2=_y3;
    _y3=tempY1;
    _y4=tempX1;

  }

  color hue() {
    return _hue;
  }

 
  void setHue(color hue) {
    _hue = hue;
  }
  
  void setx1(float x1){
    _x1=x1;
  }
  
  

}
