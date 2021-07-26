class Rect extends Shape {
  color _hue;
  float _edge;

  

  Rect(color hue,float edge) {
    setHue(hue);
    setEdge(edge);
  }

  @Override
  void aspect() {
    super.aspect();
    
    square(0, 0, edge());
    
  }

  public float edge() {
    return _edge;
  }

  public void setEdge(float edge) {
    _edge = edge;
  }
    color hue() {
    return _hue;
  }

  void setHue(color hue) {
    _hue = hue;
  }
}
