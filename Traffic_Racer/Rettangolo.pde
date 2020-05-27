public class Rettangolo {
  private float alt;   
  private float lung;
  private final static int DIM_DEFAULT = 100;
  private float cordX;  //coordinate dell'angolo in alto a sinistra
  private float cordY;
  private color colore;  //colore riempimento
  private color bordo;   //colore bordo
   
  public Rettangolo(){
   
    cordX = width / 2;  //piazzato al centro della finestra
    cordY = height / 2;
    //colore di default bianco con bordo nero
    colore = color(255, 255, 255);
    bordo = color (0, 0, 0);
    alt = DIM_DEFAULT;
    lung = DIM_DEFAULT;
  }
  
  public void show(){
    stroke(bordo);  //colore bordo
    fill(colore); //colore di riempimento
    rect(cordX,cordY,lung,alt);  //X,Y,lunghezza,altezza
  }
  
  public void setCordX(float x){
    cordX = x;
  }
  
   public void setCordY(float y){
    cordY = y;
  }
  
  public float getCordX(){
    return cordX;
  }
  
   public float getCordY(){
    return cordY;
  }
  
  public void setColore(color colore){
    this.colore = color(colore);
  }
  
  public color getColore(){
    return colore;
  }
  
  public color getBordo(){
    return bordo;
  }
  
  public void setBordo(color colore){
    bordo = colore;
  }

  public void setAlt(float alt){
    this.alt=alt;
  }
  
  public float getAlt(){
    return alt;
  }
  
  public void setLung(float lung){
    this.lung=lung;
  }
  
  public float getLung(){
    return lung;
  }
}