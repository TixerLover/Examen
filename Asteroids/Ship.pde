class Player extends GameObject
{
  Player(String image, Vector2 initPos)
  {
    super(image, initPos);
  }

  void ProcessInput() {
    if (keyPressed) {
        // Movimiento hacia adelante basado en la rotación actual
        if (key == 'w' || key == 'W') {
            // Calcula la dirección hacia adelante considerando la rotación actual
            println(transform.rotation);
            float angleInRadians = radians(transform.rotation - 90); // Convertimos a radianes
            Vector2 forward = new Vector2(cos(angleInRadians), sin(angleInRadians)); 
            forward.mult(5); // Controla la velocidad
            transform.Translate(forward);
        }
        // Rotación a la izquierda
        if (key == 'a'  || key == 'A') {
            transform.Rotate(-5); // Ajusta la velocidad de rotación aquí
        }
        // Rotación a la derecha
        if (key == 'd' || key == 'D') {
            transform.Rotate(5); // Ajusta la velocidad de rotación aquí
        }
          if (key == 'q') { // Dispara una bala con la barra espaciadora.
        bullets.add(new Bullet("small.png", new Vector2(transform.position.x, transform.position.y), transform.rotation));
      }
    }
}

}
