/**
Collision Detection code for Gilly's RPG
*/

PImage img1, img2, mask1, mask2;

void setup()
{
  size(500, 500);
  
  print("TEST");
  img1 = loadImage("Steel Shortsword (Real).png");
  img2 = loadImage("Steel Shortsword (Real).png");
  mask1 = loadImage("Steel Shortsword (Mask).jpg");
  mask2 = loadImage("Steel Shortsword (Mask).jpg");
}

void draw()
{
  background(0);
  
  image(img1, 10, 10);
  image(img2, mouseX, mouseY);
  
  print(collisionDetection());
}

/**
collisionDetection returns true if img1 and img2 are intersecting and false otherwise.
*/
boolean collisionDetection()
{
  return false;
}
