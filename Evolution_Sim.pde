PImage amoeba; //<>// //<>//
int locX, locY, dX, dY;
int food1X, food1Y, food2X, food2Y, food3X, food3Y;
int sizeAmoeba;

void setup() {
  size(1500, 1500);
  sizeAmoeba = 75;

  amoeba = loadImage("amoeba3.jpg");
  locX = width/2;
  locY = height/2;
  food1X = int(random(0, width));
  food1Y = int(random(0, height));

  food2X = int(random(0, width));
  food2Y = int(random(0, height));

  food3X = int(random(0, width));
  food3Y = int(random(0, height));
}
void draw() {
  background(255);
  imageMode(CENTER);

  dX = mouseX - locX ;
  dY = mouseY - locY;

  if (dX != 0) dX /= abs(dX);
  if (dY != 0) dY /= abs(dY);

  locX += dX;
  locY += dY;

  fill(color(0, 0, 255));
  ellipse(food1X, food1Y, 25, 25);
  ellipse(food2X, food2Y, 25, 25);
  ellipse(food3X, food3Y, 25, 25);



  if (locX - food1X < 1) {
    if (locY - food1Y < 1) {
      food1X = int(random(0, width));
      food1Y = int(random(0, height));
      sizeAmoeba += 5;
      println (sizeAmoeba);
    }
  }
  if (locX - food2X < 1) {
    if (locY - food2Y < 1) {
      food2X = int(random(0, width));
      food2Y = int(random(0, height));
      sizeAmoeba += 5;
      println (sizeAmoeba);
    }
  }
  if (locX - food3X < 1) {
    if (locY - food3Y < 1) {
      food3X = int(random(0, width));
      food3Y = int(random(0, height));
      sizeAmoeba += 5;
      println (sizeAmoeba);
    }
  }


  image(amoeba, locX, locY, sizeAmoeba, sizeAmoeba);
  delay(10);
}
