int cols = 10; //I
int filas = 20; //J

float ladrilloW = 80;
float ladrilloH = 40;

void setup() {
  size(800, 600);
}

void draw() {
  background(200);
  
  for (int fila = 0; fila < filas; fila++) {
    for (int col = -1; col < cols; col++) {
      
      float x = col * ladrilloW;
      float y = fila * ladrilloH;
      
      
      if (fila % 2 == 0) {
        x += ladrilloW / 2;
      }
      
      
     
      rect(x, y, ladrilloW, ladrilloH);
    }
  }
}
