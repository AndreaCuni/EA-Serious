class Mappa{    // classe che crea le colonne che dividono le varie corsie del gioco

  private int schermo = displayWidth-600;
  
  private final int STRISCIA_2 = schermo/2;
  private final int STRISCIA_3 = schermo/4;
  private final int STRISCIA_4 = 3*(schermo/4);
  
  private final int LARG = 10;
  // costruttore
  
  public Mappa (){
    show();
  }
  
  // funzione che mostra a video dei rettangoli che formano le corsie

  public void show (){

    rectMode(CENTER);
    rect(STRISCIA_2, height/2, LARG, height);        // fai a costante
    rect(STRISCIA_3, height/2, LARG, height);         // fai a costante
    rect(STRISCIA_4, height/2, LARG, height);       // fai a costante

     }
}
  
