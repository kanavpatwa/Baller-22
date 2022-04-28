int homeScore = 0;
int awayScore = 0;

void scoreBoard(){
  fill(0);
  rect(500,0, 800,200);
  
  textSize(35);
  fill(255);
  text("HOME", 525, 75);
  text("AWAY", 675, 75);
  
  if (xBall <= 10)
    homeScore += 2;
  if (xBall >= width-10)
    awayScore += 2;
      
  text(homeScore, 545, 150);
  text(awayScore, 685, 150);
}
