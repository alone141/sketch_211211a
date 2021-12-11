// gaussian icin
float mean = -0.41*166, stddev = 0.62*166;
float error1, error2, error3;
int meterToPixel, anchorCount=0;
int[] r;

void setup(){

  fullScreen();
  noFill();
  metrekare(11,6);

  Anchor anchor1 = new Anchor(); 
  anchor1.x = 0; anchor1.y = 0;
  anchor1.drw(0,0, "0,0");

  Anchor anchor2 = new Anchor();
  anchor2.x = 4; anchor2.y = 5;
  anchor2.drw(anchor2.x,anchor2.y , "4,5");

  Anchor anchor3 = new Anchor(); 
  anchor3.x = 10; anchor3.y = 6;
  anchor3.drw(anchor3.x,anchor3.y , "10,6");  

  Anchor anchor4 = new Anchor(); 
  anchor4.x = 2; anchor4.y = 6;
  anchor4.drw(anchor4.x,anchor4.y , "10,6");

}
void draw(){
    r[0] = dist(mouseX,mouseY,anchor1.x,anchor1.y);
    r[1] = dist(mouseX,mouseY,anchor2.x,anchor2.y);
    r[2] = dist(mouseX,mouseY,anchor3.x,anchor3.y);        
    
    display();
}
void display(){

}


void metrekare(int x, int y){
    int rectSize;
    if((990/x)*y > (1835/y)*x){
        rectSize = floor(1825/x);
        meterToPixel = rectSize;
        for (int i = 0; i < x; i++) {
            for (int k = 0; k < y; k++) {
                rect(10 + i * (rectSize), 10 + k *(rectSize), rectSize, rectSize);
            }
        }
    }
    else{
        rectSize = floor(990/y);
        meterToPixel = rectSize;
        for (int i = 0; i < x; i++) {
            for (int k = 0; k < y; k++) {
                rect(10 + i * (rectSize), 10 + k *(rectSize), rectSize, rectSize);
            }
        }
    }
}    

public class Anchor {
  int x = 0;
  int y = 0;


    public void Anchor(int xx, int yy) {
        Anchor newAnch = new Anchor();
        newAnch.x  = xx + 90;
        newAnch.y = yy + 85;

    }
    public void drw(int x,int y, String name){
        x=x*meterToPixel+10;
        y = y*meterToPixel+10;
        stroke(125,10,188);
        strokeWeight(16);
        point(x,y);
        textSize(16);
        stroke(132,58,92);
        fill(0, 408, 612, 204);
        text(name, x+15, y+15);
        noFill();
    }
}