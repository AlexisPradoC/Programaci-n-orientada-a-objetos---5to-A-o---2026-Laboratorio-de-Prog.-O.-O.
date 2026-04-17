int cols = 20;   // cantidad de columnas
int rows = 20;   // cantidad de filas

float[][] distancias;  // matriz para guardar distancias

int cellW, cellH;

void setup() {
  size(600, 600);
  
  distancias = new float[cols][rows];
  
  cellW = width / cols;
  cellH = height / rows;
  
  noStroke();
}

void draw() {
  background(0);
  
  calcularDistancias();
  dibujarGrilla();
}


void calcularDistancias() {
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      

      float x = i * cellW + cellW / 2;
      float y = j * cellH + cellH / 2;
      
      float d = dist(x, y, mouseX, mouseY);
      
      distancias[i][j] = d;
    }
  }
}

void dibujarGrilla() {
  
  float maxDist = dist(0, 0, width, height);
  
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      
      float d = distancias[i][j];
      
      float gris = map(d, 0, maxDist, 255, 0);
      
      fill(gris);
      
      rect(i * cellW, j * cellH, cellW, cellH);
    }
  }
}
