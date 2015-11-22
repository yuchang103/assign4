final int GAME_START=1,GAME_LOSE=2,GAME_RUN=3;
 int gameState=GAME_START;
 int x1,y1;//fighter
 int x2,y2;//treasure
 int x3,y3;//enemy
 int xb1,xb2;//background
 int hp;//hp
int i;
int xx=0;
int i,xxx,yyy;
int xx=0,aa=0;
 int jj=0;
 boolean s;
 int numFrames=5;
 int currentFrame;
 int []x=new int[20];
 int []xs=new int[5];
 int []ys=new int[5];
 PImage []images=new PImage[numFrames];
 PImage sImg;
 PImage aImg;
 PImage bImg;
 PImage cImg;
 PImage d1Img;
 PImage d2Img;
 PImage hpImg;
 PImage start1Img;
 PImage start2Img;
 PImage end1Img;
 PImage end2Img;
 float V = 5;
 boolean upPressed = false;
 boolean downPressed = false;
 boolean leftPressed = false;
 boolean rightPressed = false;
 boolean ss = false;
 void setup(){
   size(640,480);
   for(int i=0;i<numFrames;i++){
    images[i]= loadImage("img/flame"+(i+1)+".png");
   }
   xs[0] = -100;
   xs[1] = -100;
   xs[2] = -100;
   xs[3] = -100;
   xs[4] = -100;
   xb1=640;
   xb2=0;
   x1=530;
   y1=200;
   x3=-60;
   y3=floor(random(20,400));
   x2=floor(random(3,300));
   y2=floor(random(3,277));
   hp=40;
   sImg=loadImage("img/shoot.png");
   aImg=loadImage("img/fighter.png");
   bImg=loadImage("img/treasure.png");
   cImg=loadImage("img/enemy.png");
   d1Img=loadImage("img/bg1.png");
   d2Img=loadImage("img/bg2.png");
   hpImg=loadImage("img/hp.png");
   start1Img=loadImage("img/start1.png");
   start2Img=loadImage("img/start2.png");
   end1Img=loadImage("img/end1.png");
   end2Img=loadImage("img/end2.png");
   for(i=0;i<20;i++){
    x[i]=0; 
   }
 }
 
 void draw(){
   switch(gameState){
     case GAME_START:
     image(start2Img,0,0);
     if(mouseX>200&&mouseX<460&&mouseY>375&&mouseY<415){
       image(start1Img,0,0);
     }
    if(mousePressed){
    if(mousePressed&&mouseX>200&&mouseX<460&&mouseY>375&&mouseY<415){
      gameState=GAME_RUN; 
     }
     break;
     case GAME_RUN:
   if (upPressed) {
     y1 -= V;
     if(y1<0){
      y1=0; 
     }
   }
   if (downPressed) {
     y1 += V;
     if(y1>430){
      y1=430; 
     }
   }
   if (leftPressed) {
     x1 -= V;
     if(x1<0){
      x1=0; 
     }
   }
   if (rightPressed) {
     x1 += V;
     if(x1>590){
      x1=590;
     }
   }
   xx++;
   if(xx%(5)==0){
   if (keyPressed) {
    if (key == ' ' || key == ' ') {
      jj++;
    if (key == ' ') {
      if(xs[jj%5]<-20||ys[jj%5]==500){
       xs[jj%5]=x1;
       ys[jj%5]=y1+10;
      }}}
      jj++;
      }}}}
       for(i=0;i<5;i++){
       xs[i] -= 6;
       if(xs[i]<-20){
        ys[i]=500; 
       }
       }
  
   if(((x1>=x2 && x1<=x2+40) && (y1+25>=y2 && y1+25<=y2+40))||((x1+25>=x2 && x1+25<=x2+40) && (y1>=y2 && y1<=y2+40))||((x1+25>=x2 && x1+25<=x2+40) && (y1+50>=y2 && y1+50<=y2+40))||((x1+50>=x2 && x1+50<=x2+40) && (y1>=y2 && y1<=y2+40))||((x1+50>=x2 && x1+50<=x2+40) && (y1+50>=y2 && y1+50<=y2+40))||((x1+50>=x2 && x1+25<=x2+40) && (y1+50>=y2 && y1+25<=y2+40))){
     x2=floor(random(3,300));
     y2=floor(random(3,277));
     hp+=20;
     if(hp>200){
      hp=200; 
     }
   }
   image(d1Img,xb1-640,0);
   xb1=xb1+1;
   xb1%=1280;
   image(d2Img,xb2-640,0);
   xb2=xb2+1;
   xb2%=1280;
   image(bImg,x2,y2);
   for(i=0;i<5;i++){
   image(sImg,xs[i],ys[i]);
   }
   if(x3>=3000){
    x3=-60; 
   }
   if(x3>-1&&x3<2){
     y3=floor(random(3,277));
     for(i=0;i<20;i++){
     x[i]=0; 
     }
   }
   if(x3>935&&x3<938){
     y3=floor(random(10,200));
     for(i=0;i<20;i++){
     x[i]=0; 
     }
   }
   if(x3>1979&&x3<1985){
     y3=floor(random(100,300));
     for(i=0;i<20;i++){
     x[i]=0; 
     }
   }
   for(i=0;i<15;i++){
     if(i<5){
     if(((x1>=x3-(60*i)%3000-60 && x1<=x3-(60*i)%3000-60+60) && (y1+25>=y3+x[i] && y1+25<=y3+60+x[i]))||((x1+25>=x3-(60*i)%3000-60 && x1+25<=x3-(60*i)%3000-60+60) && (y1>=y3+x[i] && y1<=y3+60+x[i]))||((x1+25>=x3-(60*i)%3000-60 && x1+25<=x3-(60*i)%3000-60+60) && (y1+50>=y3+x[i] && y1+50<=y3+60+x[i]))||((x1+50>=x3-(60*i)%3000-60 && x1+50<=x3-(60*i)%3000-60+60) && (y1>=y3+x[i] && y1<=y3+x[i]+60))||((x1+50>=x3-(60*i)%3000-60 && x1+50<=x3-(60*i)%3000-60+60) && (y1+50>=y3+x[i] && y1+50<=y3+x[i]+60))||((x1+50>=x3-(60*i)%3000-60 && x1+25<=x3-(60*i)%3000-60+60) && (y1+50>=y3+x[i] && y1+25<=y3+x[i]+60))){
     x[i]=1000;
    /*if(frameCount%(60/6)==0){
    aa++;
    }
    image(images[aa%5],x3-(60*i)%3000-60,y3);*/
     for(int aa=0;aa<100;aa++){
     int j=(aa)%5;
     image(images[j],x3-(60*i)%3000-60,y3);
     }
     if(hp<=40){
     gameState=GAME_LOSE; 
     }else{
     hp-=40;
     }}
     for(int iii=0;iii<5;iii++){
     if(((xs[iii]>=x3-(60*i)%3000-60 && xs[iii]<=x3-(60*i)%3000-60+60) && (ys[iii]+20>=y3+x[i] && ys[iii]+20<=y3+60+x[i]))||((xs[iii]+20>=x3-(60*i)%3000-60 && xs[iii]+20<=x3-(60*i)%3000-60+60) && (ys[iii]>=y3+x[i] && ys[iii]<=y3+60+x[i]))||((xs[iii]+20>=x3-(60*i)%3000-60 && xs[iii]+20<=x3-(60*i)%3000-60+60) && (ys[iii]+20>=y3+x[i] && ys[iii]+20<=y3+60+x[i]))||((xs[iii]+20>=x3-(60*i)%3000-60 && xs[iii]+20<=x3-(60*i)%3000-60+60) && (ys[iii]>=y3+x[i] && ys[iii]<=y3+x[i]+60))||((xs[iii]+20>=x3-(60*i)%3000-60 && xs[iii]+20<=x3-(60*i)%3000-60+60) && (ys[iii]+20>=y3+x[i] && ys[iii]+20<=y3+x[i]+60))||((xs[iii]+20>=x3-(60*i)%3000-60 && xs[iii]+20<=x3-(60*i)%3000-60+60) && (ys[iii]+20>=y3+x[i] && ys[iii]+20<=y3+x[i]+60))){  
    if(xs[iii]>0){
     x[i]=1000;
     ys[iii]=500;
     for(int aa=0;aa<100;aa++){
     int j=(aa)%5;
     image(images[j],x3-(60*i)%3000-60,y3);
     }
    }}
    }}}
     image(cImg,(x3-60*i)%3000-60,y3+x[i]);
     }
     if(i>=5&&i<10){
     if(((x1>=(x3-801-51*i)%3000-60 && x1<=(x3-801-51*i)%3000-60+60) && (y1+25>=y3+x[i]+50*(i-5) && y1+25<=y3+x[i]+50*(i-5)+60))||((x1+25>=(x3-801-51*i)%3000-60 && x1+25<=(x3-801-51*i)%3000-60+60) && (y1>=y3+x[i]+50*(i-5) && y1<=y3+x[i]+50*(i-5)+60))||((x1+25>=(x3-801-51*i)%3000-60 && x1+25<=(x3-801-51*i)%3000-60+60) && (y1+50>=y3+x[i]+50*(i-5) && y1+50<=y3+x[i]+50*(i-5)+60))||((x1+50>=(x3-801-51*i)%3000-60 && x1+50<=(x3-801-51*i)%3000-60+60) && (y1>=y3+x[i]+50*(i-5) && y1<=y3+x[i]+50*(i-5)+60))||((x1+50>=(x3-801-51*i)%3000-60 && x1+50<=(x3-801-51*i)%3000-60+60) && (y1+50>=y3+x[i]+50*(i-5) && y1+50<=y3+x[i]+50*(i-5)+60))||((x1+50>=(x3-801-51*i)%3000-60 && x1+25<=(x3-801-51*i)%3000-60+60) && (y1+50>=y3+x[i]+50*(i-5) && y1+25<=y3+x[i]+50*(i-5)+60))){
     x[i]=1000;
     for(int aa=0;aa<100;aa++){
     int j=(aa)%5;
     image(images[j],(x3-801-51*i)%3000-60,y3+50*(i-5));
     }
     if(hp<=40){
     gameState=GAME_LOSE; 
     }else{
     hp-=40;
     }}
     for(int iii=0;iii<5;iii++){
     if(((xs[iii]>=(x3-801-51*i)%3000-60 && xs[iii]<=(x3-801-51*i)%3000-60+60) && (ys[iii]+20>=y3+50*(i-5)+x[i] && ys[iii]+20<=y3+50*(i-5)+60+x[i]))||((xs[iii]+20>=(x3-801-51*i)%3000-60 && xs[iii]+20<=(x3-801-51*i)%3000-60+60) && (ys[iii]>=y3+50*(i-5)+x[i] && ys[iii]<=y3+50*(i-5)+60+x[i]))||((xs[iii]+20>=(x3-801-51*i)%3000-60 && xs[iii]+20<=(x3-801-51*i)%3000-60+60) && (ys[iii]+20>=y3+50*(i-5)+x[i] && ys[iii]+20<=y3+50*(i-5)+60+x[i]))||((xs[iii]+20>=(x3-801-51*i)%3000-60 && xs[iii]+20<=(x3-801-51*i)%3000-60+60) && (ys[iii]>=y3+50*(i-5)+x[i] && ys[iii]<=y3+50*(i-5)+x[i]+60))||((xs[iii]+20>=(x3-801-51*i)%3000-60 && xs[iii]+20<=(x3-801-51*i)%3000-60+60) && (ys[iii]+20>=y3+50*(i-5)+x[i] && ys[iii]+20<=y3+50*(i-5)+x[i]+60))||((xs[iii]+20>=(x3-801-51*i)%3000-60 && xs[iii]+20<=(x3-801-51*i)%3000-60+60) && (ys[iii]+20>=y3+50*(i-5)+x[i] && ys[iii]+20<=y3+50*(i-5)+x[i]+60))){    
    if(xs[iii]>0){
     x[i]=1000;
     ys[iii]=500;
     for(int aa=0;aa<100;aa++){
     int j=(aa)%5;
     image(images[j],(x3-801-51*i)%3000-60,y3+50*(i-5));
     }
    }}
    }}}
     image(cImg,(x3-801-51*i)%3000-60,y3+50*(i-5)+x[i]);
    }                                                       //okokokokokokokokok
    }
     if(i>=10&&i<=12){
     if(((x1>=(x3-1602-51*i)%3000-60 && x1<=(x3-1602-51*i)%3000-60+60) && (y1+25>=y3+x[i]+50*(i-10) && y1+25<=y3+x[i]+50*(i-10)+60))||((x1+25>=(x3-1602-51*i)%3000-60 && x1+25<=(x3-1602-51*i)%3000-60+60) && (y1>=y3+x[i]+50*(i-10) && y1<=y3+x[i]+50*(i-10)+60))||((x1+25>=(x3-1602-51*i)%3000-60 && x1+25<=(x3-1602-51*i)%3000-60+60) && (y1+50>=y3+x[i]+50*(i-10) && y1+50<=y3+x[i]+50*(i-10)+60))||((x1+50>=(x3-1602-51*i)%3000-60 && x1+50<=(x3-1602-51*i)%3000-60+60) && (y1>=y3+x[i]+50*(i-10) && y1<=y3+x[i]+50*(i-10)+60))||((x1+50>=(x3-1602-51*i)%3000-60 && x1+50<=(x3-1602-51*i)%3000-60+60) && (y1+50>=y3+x[i]+50*(i-10) && y1+50<=y3+x[i]+50*(i-10)+60))||((x1+50>=(x3-1602-51*i)%3000-60 && x1+25<=(x3-1602-51*i)%3000-60+60) && (y1+50>=y3+x[i]+50*(i-10) && y1+25<=y3+x[i]+50*(i-10)+60))){
     x[i]=1000;
     for(int aa=0;aa<100;aa++){
     int j=(aa)%5;
     image(images[j],(x3-1602-51*i)%3000-60,y3+50*(i-10));
     }
     if(hp<=40){
     gameState=GAME_LOSE; 
     }else{
     hp-=40;
     }}
     for(int iii=0;iii<5;iii++){
    if(((xs[iii]>=(x3-1602-51*i)%3000-60 && xs[iii]<=(x3-1602-51*i)%3000-60+60) && (ys[iii]+20>=y3+50*(i-10)+x[i] && ys[iii]+20<=y3+50*(i-5)+60+x[i]))||((xs[iii]+20>=(x3-1602-51*i)%3000-60 && xs[iii]+20<=(x3-1602-51*i)%3000-60+60) && (ys[iii]>=y3+50*(i-10)+x[i] && ys[iii]<=y3+50*(i-5)+60+x[i]))||((xs[iii]+20>=(x3-1602-51*i)%3000-60 && xs[iii]+20<=(x3-1602-51*i)%3000-60+60) && (ys[iii]+20>=y3+50*(i-10)+x[i] && ys[iii]+20<=y3+50*(i-5)+60+x[i]))||((xs[iii]+20>=(x3-1602-51*i)%3000-60 && xs[iii]+20<=(x3-1602-51*i)%3000-60+60) && (ys[iii]>=y3+50*(i-10)+x[i] && ys[iii]<=y3+50*(i-10)+x[i]+60))||((xs[iii]+20>=(x3-1602-51*i)%3000-60 && xs[iii]+20<=(x3-1602-51*i)%3000-60+60) && (ys[iii]+20>=y3+50*(i-10)+x[i] && ys[iii]+20<=y3+50*(i-10)+x[i]+60))||((xs[iii]+20>=(x3-1602-51*i)%3000-60 && xs[iii]+20<=(x3-1602-51*i)%3000-60+60) && (ys[iii]+20>=y3+50*(i-10)+x[i] && ys[iii]+20<=y3+50*(i-10)+x[i]+60))){
    if(((xs[iii]>=(x3-1602-51*i)%3000-60 && xs[iii]<=(x3-1602-51*i)%3000-60+60) && (ys[iii]+20>=y3+50*(i-10)+x[i] && ys[iii]+20<=y3+50*(i-5)+60+x[i]))||((xs[iii]+20>=(x3-1602-51*i)%3000-60 && xs[iii]+20<=(x3-1602-51*i)%3000-60+60) && (ys[iii]>=y3+50*(i-10)+x[i] && ys[iii]<=y3+50*(i-5)+60+x[i]))||((xs[iii]+20>=(x3-1602-51*i)%3000-60 && xs[iii]+20<=(x3-1602-51*i)%3000-60+60) && (ys[iii]+20>=y3+50*(i-10)+x[i] && ys[iii]+20<=y3+50*(i-5)+60+x[i]))||((xs[iii]+20>=(x3-1602-51*i)%3000-60 && xs[iii]+20<=(x3-1602-51*i)%3000-60+60) && (ys[iii]>=y3+50*(i-10)+x[i] && ys[iii]<=y3+50*(i-10)+x[i]+60))||((xs[iii]+20>=(x3-1602-51*i)%3000-60 && xs[iii]+20<=(x3-1602-51*i)%3000-60+60) && (ys[iii]+20>=y3+50*(i-10)+x[i] && ys[iii]+20<=y3+50*(i-10)+x[i]+60))||((xs[iii]+20>=(x3-1602-51*i)%3000-60 && xs[iii]+20<=(x3-1602-51*i)%3000-60+60) && (ys[iii]+20>=y3+50*(i-10)+x[i] && ys[iii]+20<=y3+50*(i-10)+x[i]+60))){    
     if(xs[iii]>0){
     x[i]=1000;
     ys[iii]=500;
    }
     for(int aa=0;aa<100;aa++){
     int j=(aa)%5;
     image(images[j],(x3-1602-51*i)%3000-60,y3-100+50*(i-12));
     }
    }}
    }}}
     image(cImg,(x3-1602-51*i)%3000-60,y3+50*(i-10)+x[i]);
                                                           //okokokokokokokokok
     if(((x1>=(x3-1602-51*i)%3000-60 && x1<=(x3-1602-51*i)%3000-60+60) && (y1+25>=y3+x[i+3]-50*(i-10) && y1+25<=y3+x[i+3]-50*(i-10)+60))||((x1+25>=(x3-1602-51*i)%3000-60 && x1+25<=(x3-1602-51*i)%3000-60+60) && (y1>=y3+x[i+3]-50*(i-10) && y1<=y3+x[i+3]-50*(i-10)+60))||((x1+25>=(x3-1602-51*i)%3000-60 && x1+25<=(x3-1602-51*i)%3000-60+60) && (y1+50>=y3+x[i+3]-50*(i-10) && y1+50<=y3+x[i+3]-50*(i-10)+60))||((x1+50>=(x3-1602-51*i)%3000-60 && x1+50<=(x3-1602-51*i)%3000-60+60) && (y1>=y3+x[i+3]-50*(i-10) && y1<=y3+x[i+3]-50*(i-10)+60))||((x1+50>=(x3-1602-51*i)%3000-60 && x1+50<=(x3-1602-51*i)%3000-60+60) && (y1+50>=y3+x[i+3]-50*(i-10) && y1+50<=y3+x[i+3]-50*(i-10)+60))||((x1+50>=(x3-1602-51*i)%3000-60 && x1+25<=(x3-1602-51*i)%3000-60+60) && (y1+50>=y3+x[i+3]-50*(i-10) && y1+25<=y3+x[i+3]-50*(i-10)+60))){    
     x[i+3]=1000;
     for(int aa=0;aa<100;aa++){
     int j=(aa)%5;
     image(images[j],(x3-1602-51*i)%3000-60,y3-50*(i-10));
     }
     if(hp<=40){
     gameState=GAME_LOSE; 
     }else{
     hp-=40;
     }}
     for(int iii=0;iii<5;iii++){
     if(((xs[iii]>=(x3-1602-51*i)%3000-60 && xs[iii]<=(x3-1602-51*i)%3000-60+60) && (ys[iii]+20>=y3-50*(i-10)+x[i+3] && ys[iii]+20<=y3+50*(i-5)+60+x[i]))||((xs[iii]+20>=(x3-1602-51*i)%3000-60 && xs[iii]+20<=(x3-1602-51*i)%3000-60+60) && (ys[iii]>=y3-50*(i-10)+x[i+3] && ys[iii]<=y3+50*(i-5)+60+x[i]))||((xs[iii]+20>=(x3-1602-51*i)%3000-60 && xs[iii]+20<=(x3-1602-51*i)%3000-60+60) && (ys[iii]+20>=y3-50*(i-10)+x[i+3] && ys[iii]+20<=y3+50*(i-5)+60+x[i]))||((xs[iii]+20>=(x3-1602-51*i)%3000-60 && xs[iii]+20<=(x3-1602-51*i)%3000-60+60) && (ys[iii]>=y3-50*(i-10)+x[i+3] && ys[iii]<=y3-50*(i-10)+x[i+3]+60))||((xs[iii]+20>=(x3-1602-51*i)%3000-60 && xs[iii]+20<=(x3-1602-51*i)%3000-60+60) && (ys[iii]+20>=y3-50*(i-10)+x[i+3] && ys[iii]+20<=y3-50*(i-10)+x[i+3]+60))||((xs[iii]+20>=(x3-1602-51*i)%3000-60 && xs[iii]+20<=(x3-1602-51*i)%3000-60+60) && (ys[iii]+20>=y3-50*(i-10)+x[i+3] && ys[iii]+20<=y3-50*(i-10)+x[i+3]+60))){    
     if(xs[iii]>0){
     x[i+3]=1000;
     ys[iii]=500;
    }
     for(int aa=0;aa<100;aa++){
     int j=(aa)%5;
     image(images[j],(x3-1602-51*i)%3000-60,y3-100+50*(i-12));
     }
    }}
    }}}
     image(cImg,(x3-1602-51*i)%3000-60,y3-50*(i-10)+x[i+3]);
    }                                        //...............................................................
    }
     if(i==13){
     if(((x1>=(x3-1602-51*i)%3000-60 && x1<=(x3-1602-51*i)%3000-60+60) && (y1+25>=y3+x[19]-100+50*(i-12) && y1+25<=y3+x[19]-100+50*(i-12)+60))||((x1+25>=(x3-1602-51*i)%3000-60 && x1+25<=(x3-1602-51*i)%3000-60+60) && (y1>=y3+x[19]-100+50*(i-12) && y1<=y3+x[19]-100+50*(i-12)+60))||((x1+25>=(x3-1602-51*i)%3000-60 && x1+25<=(x3-1602-51*i)%3000-60+60) && (y1+50>=y3+x[19]-100+50*(i-12) && y1+50<=y3+x[19]-100+50*(i-12)+60))||((x1+50>=(x3-1602-51*i)%3000-60 && x1+50<=(x3-1602-51*i)%3000-60+60) && (y1>=y3+x[19]-100+50*(i-12) && y1<=y3+x[19]-100+50*(i-12)+60))||((x1+50>=(x3-1602-51*i)%3000-60 && x1+50<=(x3-1602-51*i)%3000-60+60) && (y1+50>=y3+x[19]-100+50*(i-12) && y1+50<=y3+x[19]-100+50*(i-12)+60))||((x1+50>=(x3-1602-51*i)%3000-60 && x1+25<=(x3-1602-51*i)%3000-60+60) && (y1+50>=y3+x[19]-100+50*(i-12) && y1+25<=y3+x[19]-100+50*(i-12)+60))){    
     x[19]=1000;
     for(int aa=0;aa<100;aa++){
     int j=(aa)%5;
     image(images[j],(x3-1602-51*i)%3000-60,y3-100+50*(i-12));
     }
     if(hp<=40){
     gameState=GAME_LOSE; 
     }else{
     hp-=40;
     }}
     for(int iii=0;iii<5;iii++){
     if(((xs[iii]>=(x3-1602-51*i)%3000-60 && xs[iii]<=(x3-1602-51*i)%3000-60+60) && (ys[iii]+20>=y3-100+50*(i-12)+x[19] && ys[iii]+20<=y3+50*(i-5)+60+x[i]))||((xs[iii]+20>=(x3-1602-51*i)%3000-60 && xs[iii]+20<=(x3-1602-51*i)%3000-60+60) && (ys[iii]>=y3-100+50*(i-12)+x[19] && ys[iii]<=y3+50*(i-5)+60+x[i]))||((xs[iii]+20>=(x3-1602-51*i)%3000-60 && xs[iii]+20<=(x3-1602-51*i)%3000-60+60) && (ys[iii]+20>=y3-100+50*(i-12)+x[19] && ys[iii]+20<=y3+50*(i-5)+60+x[i]))||((xs[iii]+20>=(x3-1602-51*i)%3000-60 && xs[iii]+20<=(x3-1602-51*i)%3000-60+60) && (ys[iii]>=y3-100+50*(i-12)+x[19] && ys[iii]<=y3-100+50*(i-12)+x[19]+60))||((xs[iii]+20>=(x3-1602-51*i)%3000-60 && xs[iii]+20<=(x3-1602-51*i)%3000-60+60) && (ys[iii]+20>=y3-100+50*(i-12)+x[19] && ys[iii]+20<=y3-100+50*(i-12)+x[19]+60))||((xs[iii]+20>=(x3-1602-51*i)%3000-60 && xs[iii]+20<=(x3-1602-51*i)%3000-60+60) && (ys[iii]+20>=y3-100+50*(i-12)+x[19] && ys[iii]+20<=y3-100+50*(i-12)+x[19]+60))){
     if(xs[iii]>0){
     x[19]=1000;
     ys[iii]=500;
    }
     for(int aa=0;aa<100;aa++){
     int j=(aa)%5;
     image(images[j],(x3-1602-51*i)%3000-60,y3-100+50*(i-12));
     }
    }}
    }}}
     image(cImg,(x3-1602-51*i)%3000-60,y3-100+50*(i-12)+x[19]);
    }                                      //....................................
    }
     if(i>=13&&i<15){
     if(((x1>=(x3-1602-51*i)%3000-60 && x1<=(x3-1602-51*i)%3000-60+60) && (y1+25>=y3+x[i+3]+100-50*(i-12) && y1+25<=y3+x[i+3]+100-50*(i-12)+60))||((x1+25>=(x3-1602-51*i)%3000-60 && x1+25<=(x3-1602-51*i)%3000-60+60) && (y1>=y3+x[i+3]+100-50*(i-12) && y1<=y3+x[i+3]+100-50*(i-12)+60))||((x1+25>=(x3-1602-51*i)%3000-60 && x1+25<=(x3-1602-51*i)%3000-60+60) && (y1+50>=y3+x[i+3]+100-50*(i-12) && y1+50<=y3+x[i+3]+100-50*(i-12)+60))||((x1+50>=(x3-1602-51*i)%3000-60 && x1+50<=(x3-1602-51*i)%3000-60+60) && (y1>=y3+x[i+3]+100-50*(i-12) && y1<=y3+x[i+3]+100-50*(i-12)+60))||((x1+50>=(x3-1602-51*i)%3000-60 && x1+50<=(x3-1602-51*i)%3000-60+60) && (y1+50>=y3+x[i+3]+100-50*(i-12) && y1+50<=y3+x[i+3]+100-50*(i-12)+60))||((x1+50>=(x3-1602-51*i)%3000-60 && x1+25<=(x3-1602-51*i)%3000-60+60) && (y1+50>=y3+x[i+3]+100-50*(i-12) && y1+25<=y3+x[i+3]+100-50*(i-12)+60))){    
     x[i+3]=1000;
     for(int aa=0;aa<100;aa++){
     int j=(aa)%5;
     image(images[j],(x3-1602-51*i)%3000-60,y3+100-50*(i-12));
     }
     if(hp<=40){
     gameState=GAME_LOSE; 
     }else{
     hp-=40;
     }}
     for(int iii=0;iii<5;iii++){
     if(((xs[iii]>=(x3-1602-51*i)%3000-60 && xs[iii]<=(x3-1602-51*i)%3000-60+60) && (ys[iii]+20>=y3+100-50*(i-12)+x[i+3] && ys[iii]+20<=y3+50*(i-5)+60+x[i]))||((xs[iii]+20>=(x3-1602-51*i)%3000-60 && xs[iii]+20<=(x3-1602-51*i)%3000-60+60) && (ys[iii]>=y3+100-50*(i-12)+x[i+3] && ys[iii]<=y3+50*(i-5)+60+x[i]))||((xs[iii]+20>=(x3-1602-51*i)%3000-60 && xs[iii]+20<=(x3-1602-51*i)%3000-60+60) && (ys[iii]+20>=y3+100-50*(i-12)+x[i+3] && ys[iii]+20<=y3+50*(i-5)+60+x[i]))||((xs[iii]+20>=(x3-1602-51*i)%3000-60 && xs[iii]+20<=(x3-1602-51*i)%3000-60+60) && (ys[iii]>=y3+100-50*(i-12)+x[i+3] && ys[iii]<=y3+100-50*(i-12)+x[i+3]+60))||((xs[iii]+20>=(x3-1602-51*i)%3000-60 && xs[iii]+20<=(x3-1602-51*i)%3000-60+60) && (ys[iii]+20>=y3+100-50*(i-12)+x[i+3] && ys[iii]+20<=y3+100-50*(i-12)+x[i+3]+60))||((xs[iii]+20>=(x3-1602-51*i)%3000-60 && xs[iii]+20<=(x3-1602-51*i)%3000-60+60) && (ys[iii]+20>=y3+100-50*(i-12)+x[i+3] && ys[iii]+20<=y3+100-50*(i-12)+x[i+3]+60))){
     if(xs[iii]>0){
     x[i+3]=1000;
     ys[iii]=500;
    }
     for(int aa=0;aa<100;aa++){
     int j=(aa)%5;
     image(images[j],(x3-1602-51*i)%3000-60,y3-100+50*(i-12));
     }
    }}
    }}}
     image(cImg,(x3-1602-51*i)%3000-60,y3+100-50*(i-12)+x[i+3]);
     }
     }
  
  x3=x3+3;
   image(aImg,x1,y1);
   colorMode(RGB);
  
   fill(255,0,0);
   stroke(255,0,0);
   rect(11,16,hp,13);
  
   image(hpImg,10,10);
   break;
     case GAME_LOSE:
     image(end2Img,0,0);
     if(mouseX>210&&mouseX<440&&mouseY>305&&mouseY<350){
       image(end1Img,0,0);
     }
    if(mousePressed){
    if(mousePressed&&mouseX>210&&mouseX<440&&mouseY>305&&mouseY<350){
      gameState=GAME_RUN; 
      xb1=640;
      xb2=0;
      x1=530;
      y1=200;
      x3=-60;
      xs[0] = -100;
      xs[1] = -100;
      xs[2] = -100;
      xs[3] = -100;
      xs[4] = -100;
      y3=floor(random(20,400));
      x2=floor(random(3,300));
      y2=floor(random(3,277));
      hp=40;
     }
     for(i=0;i<20;i++){
    x[i]=0; 
    }
     break;
 }}

 void keyPressed() {
   if (key == CODED) { // detect special keys 
     switch (keyCode) {
       case UP:
         upPressed = true;
         break;
       case DOWN:
         downPressed = true;
         break;
       case LEFT:
         leftPressed = true;
         break;
       case RIGHT:
         rightPressed = true;
         break;
     }
   }
 }

 void keyReleased() {
   if (key == CODED) {
     switch (keyCode) {
       case UP:
         upPressed = false;
         break;
       case DOWN:
         downPressed = false;
         break;
       case LEFT:
         leftPressed = false;
         break;
       case RIGHT:
         rightPressed = false;
         break;
     }
   }
 }
