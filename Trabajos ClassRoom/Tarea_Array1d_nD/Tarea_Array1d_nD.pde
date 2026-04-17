int numBarras = 20;
float[] alturas;

int anchoBarra;

void setup() {
  size(600, 400);
  
  alturas = new float[numBarras];
  anchoBarra = width / numBarras;
  
 
  for (int i = 0; i < numBarras; i++) {
    alturas[i] = height / 2;
  }
}

void draw() {
  background(30);
  
  for (int i = 0; i < numBarras; i++) {
    
    float x = i * anchoBarra;
    float h = alturas[i];
    
    fill(100, 200, 255);
    rect(x, height - h, anchoBarra - 2, h);
  }
}


void mouseDragged() {
  int index = mouseX / anchoBarra;
  
  if (index >= 0 && index < numBarras) {
    

    float nuevaAltura = height - mouseY;
    
    
    nuevaAltura = constrain(nuevaAltura, 0, height);
    
    alturas[index] = nuevaAltura;
  }
}
