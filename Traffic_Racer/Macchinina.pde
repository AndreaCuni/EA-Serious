class Macchinina{

    private PImage macchina;
    private float x;
    private float y;
    
    public Macchinina(){
      
      macchina = loadImage("Jpeg17.jpg");  
      x = width/2;
      y = eight/2;

    }

    public Macchinina(float x,float y){
      
      macchina = loadImage("Jpeg17.jpeg");
      this.x = y;
      this.y = y;

    }
    
    public void move(float x,float y){
      setX(x);
      setY(y); 
    }

    public void show(){

      image(macchina,x,y,100,50);

    }

    public Float getX() {
        return x;
    }

    public float getY() {
        return y;
    }

    public void setX(float newX) {
        x = newX;
    }

    public void setY(float newY) {
        y = newY;
    }

}
