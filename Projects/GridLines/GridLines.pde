void setup()
{
  // Call this first to set the width and height variables to the correct sizes.
  //fullScreen();
  size(512, 512);
}

void draw()
{

  background(255);
  
  stroke(45, 45, 45);
  strokeWeight(1);
  //drawLines(16);
  
  stroke(30, 30, 30);
  strokeWeight(1.5);
  //drawLines(32);
  
  stroke(15, 15, 15);
  strokeWeight(2);
  drawLines(64);
  
  stroke(0, 0, 0);
  strokeWeight(4);
  drawLines(128);
  
  stroke(0, 0, 0);
  fill(255, 0, 0);
  int size = 10;
  int resolution = 64;
  textSize(resolution/2);
  textAlign(CENTER, CENTER);
  int index = 0;
  for(int x = resolution/2; x < width;  x += resolution)
  for(int y = resolution/2; y < height; y += resolution)
  for(int i = 0; i < 1; i++)
  {
    
     //ellipse(x + random(resolution), y + random(resolution), size, size);
     //ellipse(x + resolution/2, y + resolution/2, size, size);

     text("" + index, x, y);
     index++;
  }
  
  noLoop();
  
}

void drawLines(int resolution)
{
  // Draw horizontal lines.
  for(int y = 0; y < height;  y += resolution)
  {    
    line(0, y, width, y); 
  }
  
  // Draw Vertical Lines.
  for(int x = 0; x < width; x += resolution)
  {
    line(x, 0, x, height); 
  } 
}

void keyPressed()
{
  
  // If the user presses space, then this program will save a nice transparent image of the fractal in the local file output.png.
  if (key == ' ')
  {
    save("output.png");
  }
}