Bacteria[]sam;
void setup()   
{ 
  size(500, 500);
  sam= new Bacteria [250];
  for (int i=0; i<sam.length; i++)
    sam[i]= new Bacteria();
}   
void draw()   
{    
  for (int i=0; i<sam.length; i++)
  {

    sam[i].show();
    sam[i].move();
}
}
class Bacteria    
{     

  int myX;
  int myY;
  
  Bacteria() {
    myX=250;
    myY=250;
   
  }
 
  void move() {
    myX= myX+ (int)(Math.random()*3)-1;
    myY= myY + (int)(Math.random()*3)-1;
  
  }
  void show() {
    ellipse(myX, myY, 3, 5);
    fill((int)(Math.random()*256));
    noStroke();
  }
}