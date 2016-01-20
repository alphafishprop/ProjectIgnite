/*
 * Windows bouncing ball screen saver.
 * Written by Grant Schwabacher.
 */

int xPos=10;
int xDir=1;
int yPos=10;
int yDir=1;

void setup()
{
  size(600,400);
  smooth();
  frameRate(100);
}

void draw()
{
   
  background(124); // Try commenting out this line!
  
  ellipse(xPos, yPos, 20, 20);
  xPos=xPos+xDir;
  if(xPos>width-10 || xPos<10)
  {
    xDir=xDir*-1;
  }
  yPos=yPos+yDir;
  if(yPos>height-10 || yPos<10)
  {
    yDir=yDir*-1;
  }
}