Mover bola;

void setup() {
  size(800, 600);
  bola = new Mover(width/2, height/2);
}

void draw() {
  background(220);

  PVector fuerza = new PVector(0.1, 0);
  bola.applyForce(fuerza);

  bola.update();
  bola.display();
}

class Mover {

  PVector pos, vel, acc;
  float angulo;
  float radio = 30;

  Mover(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector();
    acc = new PVector();
  }

  void applyForce(PVector f) {
    acc.add(f);
  }

  void update() {
    vel.add(acc);
    pos.add(vel);

    angulo += vel.mag() * 0.05;

    acc.mult(0);
  }

  void display() {

    pushMatrix();

    translate(pos.x, pos.y);
    rotate(angulo);

    ellipse(0, 0, radio*2, radio*2);

    line(0, 0, radio, 0);

    popMatrix();
  }
}
