class Macchinina{      // classe della macchinina protagonista che gestisce i movimenti base 

    private PImage macchina;
    private float x;
    private float y;
    
    private int schermo = displayWidth-600;
    
    private final int DIM_X_IMMAGINE = width/2;
    private final int DIM_Y_IMMAGINE = (height/4)*3;
    
    private final int COLONNA_1 = 0;
    private final int COLONNA_2 = schermo/4;
    private final int COLONNA_3 = schermo/2;
    private final int COLONNA_4 = (schermo/4)*3;
    
    private final int COLONNA_2_LIM_SX = 500;
    private final int COLONNA_2_LIM_DX = 700;
    
    private final int COLONNA_3_LIM_DX = 900;
    private final int COLONNA_4_LIM_DX = 1200;
    
    private final int DIM_SHOW_X = displayWidth/6;
    private final int DIM_SHOW_Y = displayHeight/6;
    
    // costruttore
    
    public Macchinina(){
      
      macchina = loadImage("Jpeg17.png");  
      x = DIM_X_IMMAGINE;                               
      y = DIM_Y_IMMAGINE;                         
      
    }
    
    // funzione che mostra a video l'immagine spostata
    
    public void move(float x){
      
      if (x > COLONNA_3_LIM_DX && x < COLONNA_4_LIM_DX){          //x > l && x < lc       // fai a costante
        setX(COLONNA_1);                                                 // fai a costante
      }else{
        if(x > COLONNA_2_LIM_DX && x < COLONNA_3_LIM_DX ){        // x > lc && x < c        // fai a costante
          setX(COLONNA_2);                                       // fai a costante
        }else{
           if(x > COLONNA_2_LIM_SX && x < COLONNA_2_LIM_DX ){    // x > c && x < rc      // fai a costante
             setX(COLONNA_3);                                   
           }else{
             setX(COLONNA_4);                                 
           }    
        }
      }
      
      show();
      
    }
    
    // funzione che mostra a video l'immagine

    public void show(){

      image(macchina,x,y,DIM_SHOW_X,DIM_SHOW_Y);       // fai a costante

    }
    
    // set e get

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
