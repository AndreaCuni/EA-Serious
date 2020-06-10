class Pallina{
  
  public float x;
  public float y;
  private float raggio;
  
  //inizializzo
   public Pallina(float x, float y, float raggio){
    this.x = x;
    this.y = y;
    this.raggio = raggio;
  }

  // disegna la pallina sullo schermo
  public void display()
  {
    stroke(0);
    fill(255);
    ellipse(x, y, raggio*2, raggio*2);
  }




}
