

abstract class Shape {
  protected float _rotation;
  float _scaling;
  PVector _position;
  color _hue;

  Shape() {
    this(new PVector(random(0, width-300), random(0, height)),
         random(0, TWO_PI),
          1);
  }

  Shape(PVector position, float rotation, float scaling) {
    this.setPosition(position);
    setRotation(rotation);
    setScaling(scaling);
    
  }

  void draw() {
    push();
    fill(hue());
    translate(position().x, position().y);
    rotate(rotation());
    scale(scaling(), scaling());
    strokeWeight(3);
    stroke(200);
    aspect();
    pop();
  }

  void aspect(){
    rectMode(CENTER);
  
  }


  boolean location(int x, int y) {
    if(hue()==get( x, y)){
      return true;
    }
    else{return false;}
  }
  


  float scaling() {
    return this._scaling;
  }

  void setScaling(float scaling) {
    _scaling = scaling;
  }

  float rotation() {
    return _rotation;
  }

  void setRotation(float rotation) {
   
    _rotation = rotation;
  }

  PVector position() {
    return _position;
  }

  void setPosition(PVector position) {
    _position = position;
  }

  color hue() {
    return _hue;
  }

  void setHue(color hue) {
    _hue = hue;
  }
  void setReflection() {}
}
