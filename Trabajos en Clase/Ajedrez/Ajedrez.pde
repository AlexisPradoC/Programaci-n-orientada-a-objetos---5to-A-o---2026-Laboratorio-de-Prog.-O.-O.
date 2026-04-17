int filas = 8;
int cols = 8;

void setup() {
  size(800, 600);
  noStroke();
}

void draw() {
  float tamanioWitdh = width / cols;
  float tamanioHeight = height / filas;
  
  for (int fila = 0; fila < filas; fila++) {
    for (int col = 0; col < cols; col++) {
      
      if ((fila + col) % 2 == 0) {
        fill(255);
      } else {
        fill(0);
      }
      
      rect(col * tamanioWitdh, fila * tamanioHeight, tamanioWitdh, tamanioHeight);
    }
  }
}
