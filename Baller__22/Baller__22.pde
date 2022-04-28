
float[] startxPosHome = {50,100,250,250,50};
float[] startyPosHome = {275,385,325,450,500};
float[] startxPosAway = {25,50,200,200,25};
float[] startyPosAway = {325,385,350,425,450};

float[] endxPosHome = {750,725,575,575,750};
float[] endyPosHome = {325,385,350,425,450};
float[] endxPosAway = {725,675,525,525,725};
float[] endyPosAway = {275,385,325,450,500};

color homeColor = color(200,0,0);
color awayColor = color(0,0,200);

float xBall = 80;
float yBall = 400;
boolean ballDirection = true;
float ballSpeed = 2;

boolean homeOffense = true;
boolean awayOffense = false;

Team home = new Team("Toronto Raptors", homeColor);
Team away = new Team("76ers", awayColor);

Crowd c = new Crowd(home, away);

void setup() {
  size(800,600);
  c.initialCrowd();
  home.drawPlayersHome();
  away.drawPlayersAway();
  //noLoop();
}

void draw(){
  drawCourt();
  scoreBoard();
  
  drawBall();
  home.movePlayersHome();
  away.movePlayersAway();
  
}
