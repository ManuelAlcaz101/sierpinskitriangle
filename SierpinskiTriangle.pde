void setup() {
  size(600, 600);
  background(10, 50, 10);  
  noStroke();
  sierpinski(100, 500, 400, 0);
}

void sierpinski(float x, float y, float len, int depth) {
  if (len <= 20) {   
    fill(255, 215 - depth * 10, 0); 
    float x1 = x, y1 = y;
    float x2 = x + len, y2 = y;
    float x3 = x + len / 2, y3 = y - len * sqrt(3) / 2;
    triangle(x1, y1, x2, y2, x3, y3);
  } else {  
    float halfLen = len / 2;
    sierpinski(x, y, halfLen, depth + 1);  
    sierpinski(x + halfLen, y, halfLen, depth + 1);  
    sierpinski(x + halfLen / 2, y - halfLen * sqrt(3) / 2, halfLen, depth + 1); 
  }
}