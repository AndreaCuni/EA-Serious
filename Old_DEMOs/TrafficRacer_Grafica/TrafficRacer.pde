//immagini macchine 
PImage carImg;
PImage car1Img;

//immagine strada
PImage strada;

//Car macchina = new Car(60, 40);
Buche buca = new Buche(47, 78);

void setup(){
  size(1320,1080);
  
  //auto bianca
  carImg = loadImage("carImage.png");
  carImg.resize(70, 120);
  
  //autorossa
  car1Img = loadImage("carImage2.png");
  car1Img.resize(75, 120);
  
  //strada_backgroud
  strada = loadImage("strada.JPG");

}

void draw(){
  background(strada);
  image(carImg, 1100, 700);
  image(car1Img, 470, 700);


}
