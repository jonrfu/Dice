int sum;
void setup()
{
  size(500,500);
  background(0);
  noLoop();
}
void draw()
{
  background(0);
  Die b = new Die(50,50);
  b.show();
  stroke(100,100,255);
  textSize(20);
  fill(255);
  text(sum,40,40);
 
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


  }
  void roll()
  {
    dots=(int)(Math.random()*6)+1;
  
  }
  void show()
  {

   sum=0;
    for(int i =0;i<4;i++){
     for(int column=0;column<4;column++){
             fill(255);
             stroke(0);
               strokeWeight(1);
             rect(myx+(column*100),myy+(i*100),50,50);
             fill(0);
             roll();
             sum += dots;
             if (dots==1||dots==3||dots==5){
             fill(0);
             ellipse(myx+(column*100)+25,myy+(i*100)+25,5,5);
             if(dots==3){
             ellipse(myx+(column*100)+5,myy+(i*100)+5,5,5);
             ellipse(myx+(column*100)+45,myy+(i*100)+45,5,5);  
             }else if (dots==5){
             ellipse(myx+(column*100)+45,myy+(i*100)+5,5,5);
             ellipse(myx+(column*100)+5,myy+(i*100)+45,5,5);
             ellipse(myx+(column*100)+5,myy+(i*100)+5,5,5);
             ellipse(myx+(column*100)+45,myy+(i*100)+45,5,5); 
             }}else if(dots==2||dots==4||dots==6){
             ellipse(myx+(column*100)+5,myy+(i*100)+5,5,5);
             ellipse(myx+(column*100)+45,myy+(i*100)+45,5,5);
             if(dots==4){
             ellipse(myx+(column*100)+45,myy+(i*100)+5,5,5);
             ellipse(myx+(column*100)+5,myy+(i*100)+45,5,5); 
             }else if(dots==6){
               ellipse(myx+(column*100)+5,myy+(i*100)+25,5,5);
             ellipse(myx+(column*100)+45,myy+(i*100)+25,5,5);
             ellipse(myx+(column*100)+45,myy+(i*100)+5,5,5);
             ellipse(myx+(column*100)+5,myy+(i*100)+45,5,5); 
             }else{
             }


     }
  
  }
 
}
}
}
