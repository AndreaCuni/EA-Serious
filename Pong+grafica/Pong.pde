PImage tv;

Puck puck;

//SoundFile ding;

Paddle left;
Paddle right;

int leftScore = 0;
int rightScore = 0;

void setup(){
 
  size(1200, 800);
  
  puck = new Puck();
  
  left = new Paddle(true);
  right = new Paddle(false);
  
  tv = loadImage("tavolo.JPEG");
}

void draw(){
  
  background(tv);
  
  puck.checkPaddleLeft(left);
  puck.checkPaddleRight(right);
  
  left.show();
  right.show();
  
  left.update();
  right.update();
  
  puck.update();
  puck.edges();
  puck.show();
  
  fill(255);
  textSize(32);
  text(leftScore, 32, 40);
  text(rightScore, width - 64, 40);
  

  
}

void keyReleased(){
  
  left.move(0);
  right.move(0);
 
}

void keyPressed(){
  
   if(key == 'w'){
    
     left.move(-10);
     
   }else if(key == 'x'){
    
     left.move(10);
     
   }
   
   
   if(key == 'o'){
    
     right.move(-10);
     
   }else if(key == 'm'){
    
     right.move(10);
     
   }
  
  
}
