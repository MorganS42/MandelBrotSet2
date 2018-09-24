int m=255;
float s=150;
float d=10;
int p=2;
float tx=0;
float ty=0;
void setup() {
  //fullScreen(1);
  size(800,800);
  //frameRate(5);
}

void draw() {
  background(0);
  for(float x=0; x<width; x+=100/d) {
    for(float y=0; y<height; y+=100/d) {
      stroke(mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty));
      fill(mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty));
      rect(x,y,100/d,100/d);
    }  
  }
  if(mousePressed) { 
    s*=1.25;
    tx+=mouseX/s-(width/2/s);
    ty+=mouseY/s-(height/2/s);
  }
  
  if(keyPressed && key=='q') {
    s/=1.25;
  }
  
  if(keyPressed && key==' ') {
    d=100;
  }
}

int mb(float x, float y) {
    float zx = 0, zy=0, zx2=0, zy2=0;
    int n=0;
    while(n < m && abs(zx2+zy2)<8) {
        zy = 2*zx*zy + y;
        zx = zx2 - zy2 + x;
        zx2=pow(zx,p);
        zy2=pow(zy,p);
        n += 1;
    }
    return n;  
}