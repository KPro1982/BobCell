PImage amoeba; //<>// //<>//

int sizeAmoeba;
Particle f1, f2, f3;
ArrayList<Particle> particles;


void setup() {
  size(1500, 1500);
  sizeAmoeba = 75;

  particles = new ArrayList<Particle>();

  for (int i=0; i < 5; i++) {

    particles.add(new Particle());
  }

  amoeba = loadImage("amoeba3.jpg");
}

void draw() {
  background(255);
  imageMode(CENTER);

  for (Particle p : particles) {
    p.draw();
  }

  //dX = mouseX - locX ;
  //dY = mouseY - locY;

  //if (dX != 0) dX /= abs(dX);
  //if (dY != 0) dY /= abs(dY);

  //locX += dX;
  //locY += dY;


  //if (locX - food1X < 1) {
  //  if (locY - food1Y < 1) {
  //    food1X = int(random(0, width));
  //    food1Y = int(random(0, height));
  //    sizeAmoeba += 5;
  //    println (sizeAmoeba);
  //  }
  //}
  //if (locX - food2X < 1) {
  //  if (locY - food2Y < 1) {
  //    food2X = int(random(0, width));
  //    food2Y = int(random(0, height));
  //    sizeAmoeba += 5;
  //    println (sizeAmoeba);
  //  }
  //}
  //if (locX - food3X < 1) {
  //  if (locY - food3Y < 1) {
  //    food3X = int(random(0, width));
  //    food3Y = int(random(0, height));
  //    sizeAmoeba += 5;
  //    println (sizeAmoeba);
  //  }
  //}


  //image(amoeba, locX, locY, sizeAmoeba, sizeAmoeba);
  //delay(10);
}
