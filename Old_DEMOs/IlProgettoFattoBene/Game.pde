import java.net.*;
import java.io.*;

// parte legata alla logica del gioco

Macchinina m1;
CadutaMacchine caduta;
Mappa mappa;
private final int VEL = 70;

static boolean esuccessofratteli = false;    // funzione per verificare se il giocatore ha perso o no

// parte legata a open pose
  
 byte[] buf = new byte[24]; //Set your buffer size as desired

DatagramSocket socket;
DatagramPacket packet;

float nose_x;

public void settings(){
  
  size(displayWidth-600,displayHeight);

}

void setup(){
  
  // parte legata alla logica del gioco

  m1 = new Macchinina();
  caduta = new CadutaMacchine();
  mappa = new Mappa();

  noCursor();
  
  // parte legata a open pose
  
  try {
    socket = new DatagramSocket(4124); // Set your port here
  }
  catch (Exception e) {
    e.printStackTrace(); 
    println(e.getMessage());
  }
  
}

void draw(){

  // parte legata a open pose
  
  try {
    DatagramPacket packet = new DatagramPacket(buf, buf.length);
    socket.receive(packet);
    InetAddress address = packet.getAddress();
    int port = packet.getPort();
    packet = new DatagramPacket(buf, buf.length, address, port);

    nose_x = Float.intBitsToFloat( (buf[0]& 0xFF) ^ (buf[1]& 0xFF)<<8 ^ (buf[2]& 0xFF)<<16 ^ (buf[3]& 0xFF)<<24 );
    

  }
  catch (IOException e) {
    e.printStackTrace(); 
    println(e.getMessage());
  }
  
  // parte legata alla logica del gioco

  if(esuccessofratteli){   // if che controlla se il giocatore si è schiantato oppure no
    
    background(0);
    
  }else{
    
    background(#AEAEAE);      // mappa
    mappa.show();
  
    m1.move(nose_x);          // gioco
    caduta.show(VEL);                     
    
    ci_siamo_schiantati_fratteli();    // controllo
      
  }

}

// funzione per il controllo delle collisioni

void ci_siamo_schiantati_fratteli(){
  
  Vector<Macchine_Ostili> controllo = caduta.getM();

  for(int k = 0; k < controllo.size(); k++){
    
    if( controllo.elementAt(k).getX() >= m1.getX() && controllo.elementAt(k).getX() <= m1.getX() && controllo.elementAt(k).getY() >= m1.getY() ){
      
      esuccessofratteli = true;
      
    }
    
  }

}
