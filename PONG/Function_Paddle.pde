void initializePaddles()  //enters x values into paddles relative screen size
{
  
  primary = new Paddle();
  primary.location= new PVector(width*.988, nose_y);
  
  secondary = new Paddle();
  secondary.location = new PVector(width*.007, height/2);
  
  rectMode(CENTER);
  
}

void animatePaddles()  //creates the paddles and adds movement
{
  
  fill(255);
  rect(primary.location.x, nose_y, primary.paddleWidth, primary.paddleLength, 30);
  rect(secondary.location.x, secondary.location.y, secondary.paddleWidth, secondary.paddleLength, 30);
  
  primary.location.add(primary.direction);
  
  if (one_player == true)
    secondary.movement();
    secondary.location.add(secondary.direction);
    
  if (ball.location.x+ball.diameter/2 >= primary.location.x-primary.paddleWidth/2 && ball.location.x+ball.diameter/2 <= primary.location.x)
    collide(primary, -ball.x_speed);
    
  if (ball.location.x-ball.diameter/2 <= secondary.location.x+secondary.paddleWidth/2 && ball.location.x-ball.diameter/2 >= secondary.location.x)
    collide(secondary, ball.x_speed);
    
  paddleBoundaries(primary);
  paddleBoundaries(secondary);
  
}

void paddleBoundaries(Paddle paddle)  //paddle cant go past screen
{
  
  if (paddle.location.y+paddle.paddleLength/2>=height)
    paddle.location.y=height-paddle.paddleLength/2;
    
  if (paddle.location.y-paddle.paddleLength/2<=0)
    paddle.location.y=paddle.paddleLength/2;

}

void collide(Paddle paddle, int t)  //if ball collides paddle
{
  
  if (ball.location.y>=nose_y-paddle.paddleLength/2 && ball.location.y<=nose_y+paddle.paddleLength/2)
  {
    ball.direction.x=t;
    ball.direction.y+=paddle.direction.y/3;
  }

  if (ball.location.y>=paddle.location.y-paddle.paddleLength/2 && ball.location.y<=paddle.location.y+paddle.paddleLength/22)
  {
    ball.direction.x=t;
    ball.direction.y+=paddle.direction.y/3;
  }
  
}
