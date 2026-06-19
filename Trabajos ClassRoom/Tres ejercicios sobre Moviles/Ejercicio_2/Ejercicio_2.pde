Mover A;
Mover B;

void setup() {
  size(800, 600);

  A = new Mover(100, 300);
  B = new Mover(700, 300);

  A.vel = new PVector(3, 2);
}

void draw() {
  background(220);

  A.update();


  PVector direccion = PVector.sub(A.pos, B.pos);

  direccion.normalize();
  direccion.mult(0.15);

  B.applyForce(direccion);
  B.update();

  A.display();
  B.display();
}

class Mover {

  PVector pos;
  PVector vel;
  PVector acc;

  float radio = 25;

  Mover(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector();
    acc = new PVector();
  }

  void applyForce(PVector fuerza) {
    acc.add(fuerza);
  }

  void update() {

    vel.add(acc);

    vel.limit(4);

    pos.add(vel);

    acc.mult(0);

    if (pos.x < radio) {
      pos.x = radio;
      vel.x *= -1;
    }

    if (pos.x > width - radio) {
      pos.x = width - radio;
      vel.x *= -1;
    }

    if (pos.y < radio) {
      pos.y = radio;
      vel.y *= -1;
    }

    if (pos.y > height - radio) {
      pos.y = height - radio;
      vel.y *= -1;
    }
  }

  void display() {
    ellipse(pos.x, pos.y, radio * 2, radio * 2);
  }
}
