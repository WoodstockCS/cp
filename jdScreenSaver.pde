float l = 1;
float m = 1;
float n = 1;
float t = 0;

void setup() {
  size(680, 680);
  background(0);
}

void draw() {
  t++;
  translate(width/2, height/2);
  stroke(255);
  strokeWeight(5);
  point(x1(t) + 150, y1(t) + 125);
  point(x2(t) - 175, y2(t) - 200);
  point(x3(t) + 140, y3(t) - 200);
  point(x4(t) - 175, y4(t) + 125);
  if (keyPressed && key == 'l') {
    int randoml = (int)(Math.random() * 9 + 1);
     l = randoml;
     background(0);
  }
  if (keyPressed && key == 'm') {
    int randomm = (int)(Math.random() * 9 + 1);
    m = randomm;
    background(0);
  }
  if (keyPressed && key == 'n') {
    int randomn = (int)(Math.random() * 9 + 1);
    n = randomn;
    background(0);
  }
}

float x1(float t) {
  return sin(t/l) * 100 + sin(t/m) * 50;
}
float y1(float t) {
  return cos(t/n) * 200;
}
float x2(float t) {
  return cos(t/l) * 150;
}
float y2(float t) {
  return sin(t/m) * 100 + sin(t/n) * 20;
}
float x3(float t) {
  return cos(t/l) * 100 + cos(t/m) * 50;
}
float y3(float t) {
  return sin(t/n) * 100;
}
float x4(float t) {
  return sin(t/l) * 100;
}
float y4(float t) {
  return cos(t/n) * 150 + cos (t/m) * 50;
}