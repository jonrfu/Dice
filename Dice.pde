void setup()
{
  size(500,500);
  background(0);
  noLoop();

}
void draw()
{
  Die b = new Die(50,50);
  b.show();
}
void mousePressed()
{
  redraw();
}
class Die
{
  int myx, myy, dots;

  Die(int x, int y) //constructor
  {
    myx = 100;
    myy = 100;
    dots= 1;
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    stroke(255);
    square(100,100,15);
  }
}
