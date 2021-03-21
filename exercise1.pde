float rocketX = 260;
float rocketY = 100;

float headWidth = 40;
float bodyWidth = 160;
float tailWidth = 40;
float flameWidth = 20;

float windowOffset = 30;
float wingWidth = 70;
float stripeWidth = 20;

float wingSpan = 80;
float bodyHeight = 40;
float windowSize = 25;

float rocketXSpeed = 5;
float rocketYAmplitude = 40;

PImage bg;

void setup(){
  size(800,200);
  bg = loadImage("cosmos.png");
}

void draw(){
  background(bg);
  
  noStroke();
  fill(255,214,46);
  ellipse(rocketX,rocketY,bodyHeight,bodyHeight);
  
  fill(172,57,57);
  ellipse(rocketX+tailWidth+bodyWidth,rocketY,2*headWidth,bodyHeight);
  
  fill(172,57,57);
  rectMode(CENTER);
  rect(rocketX+20,rocketY,40,40);
  triangle(rocketX,rocketY+stripeWidth,rocketX+tailWidth,rocketY+stripeWidth,rocketX,rocketY+tailWidth);
  triangle(rocketX,rocketY-stripeWidth,rocketX+tailWidth,rocketY-stripeWidth,rocketX,rocketY-tailWidth);
  
  fill(255);
  rect(rocketX+60,rocketY,bodyHeight,bodyHeight);
  rect(rocketX+150,rocketY,100,40);
  
  fill(172,57,57);
  rect(rocketX+90,rocketY,20,40);
  
  fill(208,208,208);
  triangle(rocketX+100,rocketY+20,rocketX+170,rocketY+20,rocketX+100,rocketY+40);
  triangle(rocketX+100,rocketY-20,rocketX+170,rocketY-20,rocketX+100,rocketY-40);
  
  stroke(182,209,218);
  fill(207,244,249);
  ellipse(rocketX+170,rocketY,windowSize,windowSize);
  
  //move
  rocketX += rocketXSpeed;
  rocketX %= (800+260);
  rocketY = rocketYAmplitude*sin(radians(rocketX))+100;
  
  

}
