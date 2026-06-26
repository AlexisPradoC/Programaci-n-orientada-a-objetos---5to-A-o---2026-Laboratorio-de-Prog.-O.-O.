Movil[] robots;
int n = 10;
int distancia = 60;


void setup () {
  size(800, 600);

  robots= new Movil[n];

  for (int i=0; i < n; i++) {

    robots[i] = new Movil(50 + i * distancia, 200);
  }
}

void draw() {
  background (255);

  for (int i=0; i < n; i++) {
    robots[i].mostrar();
  }    
}
