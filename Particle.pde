class Particle {
  int px = 0;
  int py = 0;
  int ex = 0;
  int ey = 0;
  int pSize = 25;


  Particle() {
    px = int(random(0, width));
    py = int(random(0, height));
  }

  void draw() {
    fill(color(0, 0, 255));
    ellipse(px, py, pSize, pSize);
  }
}
