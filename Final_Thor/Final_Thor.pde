int Circle_Count = 1500; 
float [] Xs = new float[Circle_Count];
float [] Ys = new float [Circle_Count];
int colorVal = 0; 
PImage guj; 
PFont dis; 
int x = 350;
int y = 400; 

void setup()
{
size (800, 800); 

  for (int i = 0; i < 1500; i++)
  {
    Xs[i] = random(width);
    Ys[i] = random(height);
  }
  
   guj= loadImage("guj.png");
  
}
void draw()
{
 
  
  for (int i =0; i < 1500; i++)
  {
       fill(colorVal,255,1000,255); 
    ellipse(Xs[i], Ys[i], 15, 15);
fill(random(255),random(255),random(255));

    Ys[i] = Ys[i]+ random(100); 
    if (Ys[i]>height)
 
      Ys[i]=0;
      
      noStroke(); 
    colorVal++; 
    if(colorVal>255)
    {
      colorVal = 0;
    }
    
    }
 imageMode(CENTER);
 image(guj,x, y, 600, 600);
Marvel(); 
 
 
 }
void Marvel()
{
   
dis = createFont("waltograph42.ttf",32);
textFont(dis,150); 
   text("NO CAPES",100,400); 
   fill(0,0,0);
 
 
}