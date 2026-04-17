int cols = 16;
int rows = 9;

boolean[][] estados;

int cellW, cellH;

void setup() {
  size(640, 360);
  
  estados = new boolean[cols][rows];
  
  cellW = width / cols;
  cellH = height / rows;
}

void draw() {
  background(200);
  
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      
      int x = i * cellW;
      int y = j * cellH;
      
      if (estados[i][j] == false) {
        fill(255);
        rect(x, y, cellW, cellH);
      } else {
        dibujarEstampa(x, y, cellW, cellH);
      }
    }
  }
}


void mousePressed() {
  int col = mouseX / cellW;
  int row = mouseY / cellH;
  

  if (col >= 0 && col < cols && row >= 0 && row < rows) {
    estados[col][row] = !estados[col][row];
  }
}


void dibujarEstampa(float x, float y, float w, float h) {
  fill(50, 150, 255);
  rect(x, y, w, h);
  
  fill(255);
  ellipse(x + w/2, y + h/2, w*0.5, h*0.5);
}
