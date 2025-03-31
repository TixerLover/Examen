class Transform{
  Vector2 position = new Vector2();
  float rotation;
  Vector2 scale = new Vector2(1,1);
  
  void Translate(Vector2 dist){
    position.x += dist.x; //cambia la rotacion en x
    position.y += dist.y; //cambia la rotacion en y
  }
  
  void Rotate(float degrees){
    float tempRotation = rotation + degrees  % 360;
    rotation =  tempRotation >= 0 ? tempRotation : (360 + tempRotation);
  }
  Transform() {
    position = new Vector2(0, 0);
    rotation = 0;
    scale = new Vector2(1, 1);
  }
}
