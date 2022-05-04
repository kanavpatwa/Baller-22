int homeScore = 0;
int awayScore = 0;

void scoreBoard() {
  fill(0);
  rect(500, 0, 800, 200);

  textSize(35);
  fill(255);
  //textAlign(LEFT);
  text("HOME", 575, 75);
  text("AWAY", 725, 75);
  //println(!pointScored);

  if (pointScored == true) {
    if (xBall <= 10)
      homeScore += 2;
    if (xBall >= width-10)
      awayScore += 2;
  }



  text(homeScore, 575, 150);
  text(awayScore, 725, 150);
}
