float shootingSkillHome = 100;
float blockingSkillHome = 0;
float shootingSkillAway = 100;
float blockingSkillAway = 0;
boolean pointScored;

int randPlayer = int(random(0, 6));

void probScoringHome() {
  float probScore = (shootingSkillHome - blockingSkillAway) / 100;
  float random = random(1);

  if (probScore <= random)
    pointScored = false;
  else
    pointScored = true;
}

void probScoringAway() {
  float probScore = (shootingSkillAway - blockingSkillHome) / 100;
  float random = random(1);

  if (probScore <= random)
    pointScored = false;
  else
    pointScored = true;
}

void drawBall() {

  fill(255, 100, 0);
  circle(xBall, yBall, 20);

  if (xBall >= width-10) {
    probScoringHome();

    xBall = 725;
    xBall -= ballSpeed;
    ballDirection = false;
  } else if (xBall <= 10) {
    probScoringAway();

    xBall = 80;
    xBall += ballSpeed;
    ballDirection = true;
  } else {
    if (ballDirection == true)
      xBall += ballSpeed;
    else
      xBall -= ballSpeed;
  }
}
