class Racchetta{
  
      private float x;
      private float y;
    
      private float racchetta_larg;
      private float racchetta_alt;
  
  //inizializzo
  public Racchetta(float x, float y){
      this.x = x;
      this.y = y;
  
      racchetta_larg = 20;
      racchetta_alt = 50;
  }
  
  // disegna la racchetta sullo schermo
  public void display(){
      stroke(0);
      fill(255, 0, 0);
      rectMode(CENTER);
      rect(x, y, racchetta_larg, racchetta_alt);
}



}
