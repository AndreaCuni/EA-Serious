PImage carImg;
PImage car1Img;

//Car macchina = new Car(60, 40);

void setup(){
  size(1200,800);
  background(255);
  //auto bianca
  carImg = loadImage("carImage.png");
  carImg.resize(60, 40);
  
  //autorossa
  car1Img = loadImage("carImage2.png");
  car1Img.resize(60, 40);

}

void draw(){
  background(255);
  image(carImg, 200, 30);
  image(car1Img, 500, 30);


}
