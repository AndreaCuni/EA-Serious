import java.util.Vector;

class CadutaMacchine{          // classe che gestisce la caduta randomica delle macchine con un vector

  private Vector<Macchine_Ostili> m;
  private final int N_MAC = 3;
  
  // costruttore

  public CadutaMacchine(){
    
    m  = new Vector<Macchine_Ostili>();
    
    for(int i =0; i < N_MAC; i++){
      
      add();
      
    }

  }
  
  // funzione che mostra a video le immagini del nemici

  public void show( int vel){
    
    for (int i  = 0 ; i<m.size(); i++){
      
      m.elementAt(i).move(vel);
     
    }
    
  }
  
  // funzione che aggiungi i nemici

  public void add(){

    m.add(new Macchine_Ostili());

  }
  
  // get 
  
  public Vector<Macchine_Ostili> getM(){
    
    return m;
    
  }
  
  public int getN_MAC(){
    
    return N_MAC;
    
  }
  
}
