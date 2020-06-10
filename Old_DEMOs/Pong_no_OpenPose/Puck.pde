
class Puck{
 
  float x = width / 2;
  float y = height / 2;
  
  float percorrenzaX; // Un po' di movimento
  float percorrenzaY;
  
  float r = 12;
  
  Puck(){
    
    reset();
    
  }
  
  void checkPaddleLeft( Paddle p ){
   
    if( y < p.y + p.h/2 && y > p.y - p.h/2 && x - r < p.x + p.w/2){
      
       if( x > p.x ){
        
         float diff = y - (p.y - p.h/2);
         float rad = radians (45);
         float angle = map(diff, 0, p.h, -rad, rad);
         
         percorrenzaX = 5 * cos(angle);
         percorrenzaY = 5 * sin(angle);
         
         x = p.x + p.w/2 + r;
        
      }
     
    }
   
  }
  
  void checkPaddleRight( Paddle p ){
   
    if( y < p.y + p.h/2 && y > p.y - p.h/2 && x + r > p.x - p.w/2){
      
      if( x < p.x ){
        
         float diff = y - (p.y - p.h/2);
         float rad = radians (135);
         float angle = map(diff, 0, p.h, -rad, rad);
         
         percorrenzaX = 5 * cos(angle);
         percorrenzaY = 5 * sin(angle);
         
         x = p.x - p.w/2 - r;
      }
      
    }
   
  }
  
  void update(){ //Aggiorniamo il movimento della pallina
    
    x = x + percorrenzaX;
    y = y + percorrenzaY;
    
  }
  
  void reset(){
   
   x = width / 2;
   y = height / 2;
   
   float angle = random(-PI/4, PI/4);
   percorrenzaX = 5 * cos(angle);
   percorrenzaY = 5 * sin(angle);
   
   if( random(1) < 0.5 ){
    
     percorrenzaX *= -1;
     
   }
    
  }
  
  
  void edges(){ //Settiamo i bordi come entità che respingono
   
    if( y < 0 || y > height ){
     
      percorrenzaY *= -1;
      
    }
    
    if( x - r > width ){
     
      //ding.play();
      leftScore++;
      reset();
      
    }
    
    if( x + r < 0 ){
     
      //ding.play();
      rightScore++;
      reset();
      
    }
    
  }  
  
  void show(){
   
    fill(255);
    
    ellipse(x, y, r*2, r*2);
    
  }
  
  
}
