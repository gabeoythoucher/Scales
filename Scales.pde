float t = 0.00;
void setup() {
  size(512, 512);  //feel free to change the size
  //stops the draw() function from repeating
}
void draw() {
  int p;
  int b = 255;
  for(int y = -64; y <= 512; y+=16)
  {
    for(int x = 0; x<=512;x+=16)
    {
      int r = int(random(1, 24));
      int ra = int(random(1, 24));
      int ran = int(random(1, 24));
      if(y/16%2==0){
        p = 8;
      }else
      {
        p = 0;
      }
      fill(255-b/4+r,64+x/2+ra,b+ran);
      ellipse(x+p,y+t,16,32); 
      noFill();
      ellipse(x+p,y+t-5,4,4);
      ellipse(x+p,y+t-5,8,8);
    }
    b -= 4;
  }
  t+= 0.5;
  if(t>32){
  t=0;
  }
}
