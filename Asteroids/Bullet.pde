class Bullet extends GameObject {
  float speed = 10; // Velocidad de la bala

  // Constructor de la bala, con una imagen opcional, posición inicial y rotación
  Bullet(String image, Vector2 initPos, float rotation) {
    super(image, initPos); // Llamamos al constructor de GameObject
    transform.rotation = rotation; // Asignamos la rotación
  }

  void Update() {
    // Calculamos la dirección hacia adelante basado en la rotación de la bala
    Vector2 forward = new Vector2(cos(radians(transform.rotation-90)), sin(radians(transform.rotation-90)));
    forward.mult(speed);  // Multiplicamos por la velocidad
    transform.Translate(forward);  // Movemos la posición de la bala
  }

  boolean IsOffScreen() {
    // Verificamos si la bala ha salido de la ventana
    return transform.position.x < 0 || transform.position.x > width || transform.position.y < 0 || transform.position.y > height;
  }

  //rectángulo para la bala:
  void Display() {
    fill(87, 35, 100);  // Color para la bala (puedes cambiarlo)
    noStroke();
    rectMode(CENTER);
    rect(transform.position.x, transform.position.y, 10, 20);  // Dibujar un rectángulo como la bala
  }
}
