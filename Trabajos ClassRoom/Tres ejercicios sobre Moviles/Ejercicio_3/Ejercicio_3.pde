Mover A;
Mover B;

void setup() {

  size(800, 600);

  A = new Mover(250, 100);
  B = new Mover(450, 50);
}

void draw() {

  background(220);

  PVector gravedad = new PVector(0, 0.2);

  A.applyForce(gravedad);
  B.applyForce(gravedad);

  A.update();
  B.update();

  float distancia = dist(
    A.pos.x, A.pos.y,
    B.pos.x, B.pos.y
  );

  if (distancia < A.radio + B.radio) {

    A.vel.mult(-1);
    B.vel.mult(-1);

    A.radio *= 0.9;
    B.radio *= 0.9;
  }

  A.display();
  B.display();
}

class Mover {

  PVector pos, vel, acc;
  float radio = 30;

  Mover(float x, float y) {

    pos = new PVector(x, y);

    vel = new PVector(
      random(-2, 2),
      random(-1, 1)
    );

    acc = new PVector();
  }

  void applyForce(PVector f) {
    acc.add(f);
  }

  void update() {

    vel.add(acc);
    pos.add(vel);

    acc.mult(0);

    if (pos.y > height - radio) {
      pos.y = height - radio;
      vel.y *= -0.8;
    }

    if (pos.y < radio) {
      pos.y = radio;
      vel.y *= -0.8;
    }

    if (pos.x < radio) {
      pos.x = radio;
      vel.x *= -0.8;
    }

    if (pos.x > width - radio) {
      pos.x = width - radio;
      vel.x *= -0.8;
    }
  }

  void display() {

    ellipse(
      pos.x,
      pos.y,
      radio * 2,
      radio * 2
    );
  }
}
