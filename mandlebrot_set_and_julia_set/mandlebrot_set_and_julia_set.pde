int m=255;
double s=150;
double d=10;
int p=2;
double tx=0;
double ty=0;

boolean duel=true;

boolean jul=true;

int hue;
int sat;
int val;
void setup() {
  //fullScreen(1);
  size(1200,800);
  //frameRate(5);
  colorMode(HSB);
}

void draw() {
  background(0);
  
  if(!duel) {
    for(double x=0; x<width; x+=100/d) {
      for(double y=0; y<height; y+=100/d) {
        //stroke(mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty,m));
        //fill(mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty,m));     
        
          if(mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty,m)==m+1) {
            stroke(random(255),random(255),random(255));
            fill(random(255),random(255),random(255));
          }
          else {
            //stroke(mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty,m));
            //fill(mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty,m));
            hue=(mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty,m)*255)/m;
            sat=255;
            if(mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty,m)<m) {
              val=255;  
            }
            else {
              val=0;
            }
            stroke(hue,sat,val);
            fill(hue,sat,val);
          }
          
          rect((float)x,(float)y,(float)(100/d),(float)(100/d));
        
        
        //stroke(mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty),mb(x/s-(width/2/(s*10))+tx,y/(s*10)-(height/2/s)+ty),mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty));
        //fill(mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty),mb(x/s-(width/2/(s*10))+tx,y/(s*10)-(height/2/s)+ty),mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty));
      }  
    }
  }  
  else {
    jul=true;
    for(double x=0; x<width/2; x+=100/d) {
      for(double y=0; y<height; y+=100/d) {
        //stroke(mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty,m));
        //fill(mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty,m));     
        
          if(mb(x/s-(width/4/s)+tx,y/s-(height/2/s)+ty,m)==m+1) {
            stroke(random(255),random(255),random(255));
            fill(random(255),random(255),random(255));
          }
          else {
            //stroke(mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty,m));
            //fill(mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty,m));
            hue=(mb(x/s-(width/4/s)+tx,y/s-(height/2/s)+ty,m)*255)/m;
            sat=255;
            if(mb(x/s-(width/4/s)+tx,y/s-(height/2/s)+ty,m)<m) {
              val=255;  
            }
            else {
              val=0;
            }
            stroke(hue,sat,val);
            fill(hue,sat,val);
          }
          
          rect((float)x+width/2,(float)y,(float)(100/d),(float)(100/d));
        
        
        //stroke(mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty),mb(x/s-(width/2/(s*10))+tx,y/(s*10)-(height/2/s)+ty),mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty));
        //fill(mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty),mb(x/s-(width/2/(s*10))+tx,y/(s*10)-(height/2/s)+ty),mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty));
      }  
    }
    jul=false;
    for(double x=0; x<width/2; x+=100/d) {
      for(double y=0; y<height; y+=100/d) {
        //stroke(mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty,m));
        //fill(mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty,m));     
        
          if(mb(x/s-(width/4/s)+tx,y/s-(height/2/s)+ty,m)==m+1) {
            stroke(random(255),random(255),random(255));
            fill(random(255),random(255),random(255));
          }
          else {
            //stroke(mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty,m));
            //fill(mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty,m));
            hue=(mb(x/s-(width/4/s)+tx,y/s-(height/2/s)+ty,m)*255)/m;
            sat=255;
            if(mb(x/s-(width/4/s)+tx,y/s-(height/2/s)+ty,m)<m) {
              val=255;  
            }
            else {
              val=0;
            }
            stroke(hue,sat,val);
            fill(hue,sat,val);
          }
          
          rect((float)x,(float)y,(float)(100/d),(float)(100/d));
        
        
        //stroke(mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty),mb(x/s-(width/2/(s*10))+tx,y/(s*10)-(height/2/s)+ty),mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty));
        //fill(mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty),mb(x/s-(width/2/(s*10))+tx,y/(s*10)-(height/2/s)+ty),mb(x/s-(width/2/s)+tx,y/s-(height/2/s)+ty));
      }  
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
  
  if(keyPressed && key=='s') {
    d=10;
  }
  
  if(keyPressed && key=='a' && d>0) {
    d/=1.08;
  }
  
  if(keyPressed && key=='d' && d<100) {
    d*=1.08;
  }
}

int mb(double x, double y, int max) {
    double zx = 0, zy=0, zx2=0, zy2=0;
    int n=0;
    double cx;
    double cy;
    if(duel) {
      cx=(mouseX-width/4*3)/s+(width/2/s);
      cy=mouseY/s-(height/2/s);
    }
    else {
      cx=mouseX/s-(width/2/s);
      cy=mouseY/s-(height/2/s);
    }
    //double cx=0;
    //double cy=0;
    double txy;
    if(jul) {
      zx=x;
      zy=y;
    }
    while(n < max && abs((float)zx2+(float)zy2)<4) {
      if(jul) {
        zx2=zx*zx;
        zy2=zy*zy;
        txy = 2*zx*zy;
        zx = zx2 - zy2 + cx;
        zy = txy + cy;      
      }
      else {
          zy = 2*zx*zy + y;
          zx = zx2 - zy2 + x;
          zx2=zx*zx;
          zy2=zy*zy;
      }
      n += 1;
    }
    return n;  
}