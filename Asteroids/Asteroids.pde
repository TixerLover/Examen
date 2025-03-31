Bullet bala;
ArrayList<GameObject> drawables = new ArrayList<GameObject>();
Player ship;
ArrayList<Bullet> bullets = new ArrayList<Bullet>(); // Lista para las balas.

void setup() {
  size(1024, 768);
  ship = new Player("ship.png", new Vector2(512, 384)); //tamaño y sprite del player
}

void draw() {
  background(0); //color del fondo
  ship.ProcessInput();
   for (int i = bullets.size() - 1; i >= 0; i--) {  // Iterar hacia atrás para evitar problemas al eliminar elementos
    Bullet b = bullets.get(i);
    b.Update();  // Mover la bala
    b.Display();  // Dibujar la bala

    // Eliminar la bala si ha salido de la pantalla
    if (b.IsOffScreen()) {
      bullets.remove(i);  // Eliminar la bala de la lista
    }
  }
  for (GameObject go : drawables) {
    go.Display();
  }
}
