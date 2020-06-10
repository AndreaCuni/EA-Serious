import java.net.*;
import java.io.*;

Ball ball;
Paddle primary, secondary;

PFont font;             //arcade style font 

int primary_score = 0;  //score counters
int secondary_score=0;

boolean one_player;   //if one player or not
boolean start=false;  //signals starting for animation

//sokcet

DatagramSocket socket;
DatagramPacket packet;

static float nose_y;
float diam = 40;
float rectSize = 200;

byte[] buf = new byte[24]; //Set your buffer size as desired

void setup()
{
  
  //connection to the sokcet
  try {
    socket = new DatagramSocket(4124); // Set your port here
  }
  catch (Exception e) {
    e.printStackTrace(); 
    println(e.getMessage());
  }
  
  rectMode(CENTER);
  size(1000, 500);
  background(0);
  smooth(8);
  frameRate(200);
  font = createFont("ka1.ttf", height/5);
  textFont(font);  //initalizing font
  ball = new Ball();    //create ball object
  initializePaddles();// enters x values into primary and secondary paddles
}
void draw()
{
  if (start==false)
  {
    buttons();   //single player and double player button
  }
  else
  {
    
    //get nose y coord
    
    try {
      DatagramPacket packet = new DatagramPacket(buf, buf.length);
      socket.receive(packet);
      InetAddress address = packet.getAddress();
      int port = packet.getPort();
      packet = new DatagramPacket(buf, buf.length, address, port);
  
      nose_y = Float.intBitsToFloat( (buf[4]& 0xFF) ^ (buf[5]& 0xFF)<<8 ^ (buf[6]& 0xFF)<<16 ^ (buf[7]& 0xFF)<<24 );

      
    }
    catch (IOException e) {
      e.printStackTrace(); 
      println(e.getMessage());
    }
    
    ball.animateBall();  //  uses vectors to add movements to ball, also checks if hitting walls
    animatePaddles();    //  adds movements to paddles
    ball.outOfBounds();  //  if ball goes out of bounds and update score
    score();             //   draws score
    
  }
  
}
