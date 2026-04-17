int cols = 12;
int rows = 12;

int cellSize = 40;

boolean[][][] lab;

void setup() {
  size(480, 480);
  
  lab = new boolean[cols][rows][6];
  
  inicializarLaberinto();
}

void draw() {
  background(255);
  
  dibujarLaberinto();
}


void inicializarLaberinto() {
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      for (int k = 0; k < 6; k++) {
        lab[i][j][k] = random(1) > 0.6;
      }
    }
  }
}


void dibujarLaberinto() {
  stroke(0);
  
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      
      float x = i * cellSize;
      float y = j * cellSize;
      
      dibujarCelda(i, j, x, y);
    }
  }
}


void dibujarCelda(int i, int j, float x, float y) {
  

  noStroke();
  fill(240);
  rect(x, y, cellSize, cellSize);
  
  stroke(0);
  


  if (lab[i][j][0]) {
    line(x, y, x + cellSize, y);
  }
  

  if (lab[i][j][3]) {
    line(x, y, x, y + cellSize);
  }
  

  if (i == cols - 1 && lab[i][j][1]) {
    line(x + cellSize, y, x + cellSize, y + cellSize);
  }
  
  
  if (j == rows - 1 && lab[i][j][2]) {
    line(x, y + cellSize, x + cellSize, y + cellSize);
  }
  

  if (lab[i][j][4]) {
    line(x, y, x + cellSize, y + cellSize);
  }
  
  if (lab[i][j][5]) {
    line(x + cellSize, y, x, y + cellSize);
  }
}


void mousePressed() {
  inicializarLaberinto();
}
