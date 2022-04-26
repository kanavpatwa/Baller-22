class Player {
  int r = 10;
  int speed = 5;
  float xPos;
  float yPos;
  
  Player(float x, float y){
    this.xPos = x;
    this.yPos = y;  
  }
 
  void draw(){
    noStroke();
    fill(225,225,0);
    square(this.xPos,this.yPos, r);
  }
  
}
