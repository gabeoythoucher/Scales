void setup() {
  size(512, 512);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  int p;
  int b = 255;
  for(int y = 0; y <= 512; y+=16)
  {
    for(int x = 0; x<=512;x+=16)
    {
      if(y/16%2==0){
        p = 8;
      }else
      {
        p = 0;
      }
      fill(255-b/4,128,b);
      ellipse(x+p,y,16,32); 
    }
    b -= 8;
  }
  noLoop();
}
//void scale(int x, int y) {
  //your code here
//}
