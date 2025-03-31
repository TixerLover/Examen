class GameObject{ //<>//
  Transform transform = new Transform();
  PImage sprite;
  
  
  GameObject(){}
  
  GameObject(String image, Vector2 initPos)
  {
    transform.position = initPos;
    sprite = loadImage(image);//carga la imagen del sprite
    drawables.add(this);
  }
  
  void Display()
  {
    imageMode(CENTER);
    translate(transform.position.x, transform.position.y);
    rotate(transform.rotation * (TWO_PI/360));
    scale(transform.scale.x);
    image(sprite, 0,0,50,50);
    
    translate(-transform.position.x, -transform.position.y);
    rotate(-transform.rotation * (TWO_PI/360));
    scale(-transform.scale.x);
  }
}
