Bubble[] bob;
void setup()   
{     
  size(500, 500);
  bob = new Bubble[75];
  for (int i = 0; i < bob.length; i++)
  {
    bob[i] = new Bubble();
  }
}
void draw()   
{
  background(255, 209, 220); 
  for (int i = 0; i < bob.length; i++)
  {
    bob[i].show();
    bob[i].randomFly();
    if (mousePressed)
      bob[i].directedFly();
  }
  fill(209, 255, 221);
  rect(mouseX-2, mouseY-30, 5, 50);
  ellipse(mouseX, mouseY-30, 20, 30);
  fill(255, 209, 220);
  ellipse(mouseX, mouseY-30, 15, 25);
  //if (get(mouseX, mouseY) !=color(255, 209, 220)){
  //text("don't pop the bubbles!", 200, 400);}
}  
class Bubble    
{     
  int myX, myY; 
  Bubble()
  {
    myX = 250; 
    myY = 500;
  }
  void randomFly()
  {
    myX = myX + (int)(Math.random()*11)-5; 
    myY = myY + (int)(Math.random()*6)-3;
  }
  void directedFly()
  {
    if (mouseX < myX)
      myX = myX + (int)(Math.random()*4)-4;
    else if (mouseX > myX)
      myX = myX + (int)(Math.random()*4);
    else if (mouseY < myY)
      myY = myY + (int)(Math.random()*6)-2;
    else if (mouseY > myY)
      myY = myY + (int)(Math.random()*10)+10;
  }
  void show()
  {
    stroke(255);
    fill(209, 243, 255, 127); 
    ellipse(myX, myY, 50, 50);
  }
}    
