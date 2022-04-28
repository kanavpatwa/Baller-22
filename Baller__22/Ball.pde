void drawBall() {
  fill(255, 100, 0);
  circle(xBall,yBall, 20);
  
  if (xBall >= width-10) {
    xBall = 725;
    xBall -= ballSpeed;
    ballDirection = false;
  }
  else if (xBall <= 10) {
    xBall = 80;
    xBall += ballSpeed;
    ballDirection = true;
  }
  else {
    if (ballDirection == true)
      xBall += ballSpeed;
    else
      xBall -= ballSpeed;
  }
}
