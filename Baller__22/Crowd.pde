class Crowd {
  Team homeTeam;
  Team awayTeam;
  int movement;
  int x;
  int y;
  Team teamScored;
  color jerseyColor[][];
  
  Crowd(Team h, Team a){
    this.homeTeam = h;
    this.awayTeam = a;
    jerseyColor = new color[20][8];
  }
  
  void initialCrowd() {
   x = 0;
   for (int i = 0; i < 20; i++){
     y = 0;
     for (int j = 0; j < 8; j++){
       int rand = round(random(1,2));
       if (rand == 1)
         jerseyColor[i][j] = this.homeTeam.jerseyColor;
       else
         jerseyColor[i][j] = this.awayTeam.jerseyColor;
       
       fill(jerseyColor[i][j]);
       square(x,y, 25);
       y += 25;
     }
     x += 25;
   }
  }
  
  void resetCrowd() {
   x = 0;
   for (int i = 0; i < 20; i++){
     y = 0;
     for (int j = 0; j < 8; j++){
       fill(jerseyColor[i][j]);
       square(x,y, 25);
       y += 25;
     }
     x += 25;
   }
  }
    
  void teamScores() {
    x = 0;
   for (int i = 0; i < 20; i++){
     y = 0;
     for (int j = 0; j < 8; j++){
       if (x <= 10 && jerseyColor[i][j] == this.homeTeam.jerseyColor)
         fill(255);
       else if (x >= width-10 && jerseyColor[i][j] == this.awayTeam.jerseyColor)
         fill(255);
       else
         fill(jerseyColor[i][j]);
       square(x,y, 25);
       y += 25;
     }
     x += 25;
   }
  }

}
