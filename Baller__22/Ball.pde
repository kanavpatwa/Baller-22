float shootingSkillHome = 100;
float blockingSkillHome = 50;
float shootingSkillAway = 100;
float blockingSkillAway = 50;
boolean pointScored;

int randPlayer = int(random(0, 6));

void drawBall() {
  

  

  fill(255, 100, 0);
  circle(xBall, yBall, 20);

  if (xBall >= width-10) {
    float probScore = (shootingSkillAway - blockingSkillAway) / 100;
    float random = random(1);
    println(random);
    println(probScore);
    println();
    if (probScore <= random)
      pointScored = false;
    else
      pointScored = true;

    xBall = 725;
    xBall -= ballSpeed;
    ballDirection = false;
  } else if (xBall <= 10) {
    float probScore = (shootingSkillHome - blockingSkillHome) / 100;
    float random = random(1);
    println(random);
    println(probScore);
    println();
    if (probScore <= random)
      pointScored = false;
    else
      pointScored = true;

    xBall = 80;
    xBall += ballSpeed;
    ballDirection = true;
  } else {
    if (ballDirection == true)
      xBall += ballSpeed;
    else
      xBall -= ballSpeed;
  }
  println(pointScored);
}
