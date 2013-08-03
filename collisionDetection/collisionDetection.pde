/**
Collision Detection code for Gilly's RPG
*/

PImage img1, img2, mask1, mask2;

color FOREGROUND = color(0);
color BACKGROUND = color(255);

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
  
  PVector loc1 = new PVector(10, 10);
  PVector loc2 = new PVector(mouseX, mouseY);
  
  image(img1, loc1);
  image(img2, loc2);
  
  PVector offset = PVector.sub(loc2, loc1);
  println(collisionDetection(offset));
}

/**
Draws img at location loc.
*/
void image(PImage img, PVector loc)
{
  image(img, loc.x, loc.y);
}

/**
collisionDetection returns true if img1 and img2 are intersecting and false otherwise.
*/
boolean collisionDetection(PVector offset)
{
  for(int x = 0; x < mask1.width; x++)
    for(int y = 0; y < mask1.height; y++)
      if(mask1.get(x, y) == FOREGROUND && mask2.get(int(x + offset.x), int(y + offset.y)) == FOREGROUND)
          return true;
 
  return false;
}
