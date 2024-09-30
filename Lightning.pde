boolean flash = false;
int x, y, d, q;

void setup() {
  size(400,400);

}

void resetLine() {
  x = 0;
  y = 0;
  d = ((int)(Math.random()*9));
  q = ((int)(Math.random()*18))-9;
}

void draw() {
  if (flash) {
    resetLine();
    background(255,255,255);
    flash = false;
    return;
  }
  if (x == 0 && y == 0) {
    background(0);
    millis();
  }
    
  //lightning segmant
  stroke(255,0,0);
  if (x <= 400 && y <= 400) {
  line(x,y,d,q);
    x = d;
    y = q;
    d += (int)(Math.random()*9);
    q += ((int)(Math.random()*18)); 
  }
  else {
    background(0);
      resetLine();
  }
}

void mousePressed() {
  flash = true;
  redraw();
}
