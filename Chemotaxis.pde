Bubble[] bob;
void setup()   
{     
  size(500, 500);
  bob = new Bubble[50];
  for (int i = 0; i < bob.length; i++)
  {
    bob[i] = new Bubble();
  }
}
void mousePressed()
{
  redraw();
}
void draw()   
{
  background(255, 209, 220); 
  for (int i = 0; i < bob.length; i++)
  {
    bob[i].show();
    bob[i].fly();
  }
}  
class Bubble    
{     
  int myX, myY; 
  Bubble()
  {
    myX = 250; 
    myY = 500;
  }
  void fly()
  {
    myX = myX + (int)(Math.random()*8)-3; 
    myY = myY + (int)(Math.random()*3)-3; 
    if (mouseX == myX && mouseY == myY) {
      fill(255);
      text("don't pop the bubbles!", 200, 400);
    }
  }
  void show()
  {
    stroke(255);
    fill(209, 243, 255, 127); 
    ellipse(myX, myY, 50, 50);
  }
}    
