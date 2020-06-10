PImage tv;
Pallina pallina = new Pallina(100,100,10);
Racchetta r1 = new Racchetta(1160, 100);
Racchetta r2 = new Racchetta(40, 100);

void setup(){
  size(1200, 800);
  
  tv = loadImage("tavolo.JPEG");
}

void draw(){
  background(tv);

  // pallina
  pallina.display();
  
  // racchetta 1
  r1.display();

  // racchetta 2
  r2.display();
  
}
