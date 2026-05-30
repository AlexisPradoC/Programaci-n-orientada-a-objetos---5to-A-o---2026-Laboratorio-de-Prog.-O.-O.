class Movil {
  PVector pos, vel;
  int r;


  Movil(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(1, 1);
    r = 20;
  }


  Movil(float x, float y, float vx, float vy) {
    pos = new PVector(x, y);
    vel = new PVector(vx, vy);
    r = 20;
  }

  void mover() {
    pos.add(vel);
    contener();
  }

  void mostrar() {
    ellipse(pos.x, pos.y, r, r);
  }

  void contener() {
    if (pos.x < 0 || pos.x > width) {
      pos.sub(vel);
      vel.x *= -1;
    }

    if (pos.y < 0 || pos.y > height) {
      pos.sub(vel);
      vel.y *= -1;
    }
  }
}
