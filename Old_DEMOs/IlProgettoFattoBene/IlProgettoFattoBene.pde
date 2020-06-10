class Macchine_Ostili{    // classe che gestisce le macchinine nemiche e i loro movimenti randomici

    private PImage macchina;
    private float x;
    private float y;
    private int rand;
    
    private int schermo = displayWidth-600;
    private float h = -displayHeight/6;
    
    private final int COLONNA_1 = 0;
    private final int COLONNA_2 = schermo/4;
    private final int COLONNA_3 = schermo/2;
    private final int COLONNA_4 = (schermo/4)*3;
    
    private final int DIM_X_IMMAGINE = displayWidth/6;
    private final int DIM_Y_IMMAGINE = displayHeight/6;

    // costruttore

    public Macchine_Ostili(){

      macchina = loadImage("Jpeg18.png");    // chiede quante corsie ci sono

      rand = int(random(1,5));  // randomizza la colonna
      this.y = h;

      switch(rand){

                    case 1: this.x = COLONNA_1;             
                         break;

                    case 2: this.x = COLONNA_2;      
                          break;


                    case 3: this.x = COLONNA_3;       
                          break;


                    case 4: this.x = COLONNA_4;     
                          break;
                }
            }
            
    // funzione che mostra a video l'immagine spostata

    public void move(int vel){

      if (y > height){
        rand = int(random(1,5));  // randomizza la colonna
        this.y = h;

      switch(rand){

                    case 1: this.x = COLONNA_1;            
                         break;

                    case 2: this.x = COLONNA_2;     
                          break;


                    case 3: this.x = COLONNA_3;     
                          break;


                    case 4: this.x = COLONNA_4;   
                          break;
                }
      }else{
        y += vel;
      }

      show();
    }
    
    // funzione che mostra a video l'immagine

    public void show(){

      image(macchina,x,y,DIM_X_IMMAGINE,DIM_Y_IMMAGINE);     

    }
    
    // set e get
    
     public void setX(float newX) {
       
        x = newX;
        
    }

    public void setY(float newY) {
      
        y = newY;
        
    }

    public Float getX() {
      
        return x;
        
    }

    public float getY() {
      
        return y;
        
    }
    
    public float getRand() {
      
        return rand;
        
    }
    
    
    

}
