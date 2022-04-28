class Team {
  String name;
  color jerseyColor;
  Player[] players;
  float[] xHome = new float[5];
  float[] yHome = new float[5];
  float[] xAway = new float[5];
  float[] yAway = new float[5];
  
  
  Team(String n, color c){
    this.name = n;
    this.jerseyColor = c;
    players = new Player[5];
  }
  

  
  void drawPlayersHome(){
    for (int i = 0; i < 5; i++) {
      xHome[i] = startxPosHome[i];
      yHome[i] = startyPosHome[i];
      strokeWeight(3);
      fill(this.jerseyColor);
      square(xHome[i], yHome[i], 30);      
  }
 }
  
  void movePlayersHome() {
    for (int i = 0; i < 5; i++) {
      if (ballDirection == true) {
      
        if (xHome[i] <= endxPosHome[i]) 
          xHome[i] += 2;
        if (yHome[i] > endyPosHome[i]) 
            yHome[i] -= 0.3;
        if (yHome[i] < endyPosHome[i])
            yHome[i] += 0.3;
      }
      
      else {
        if (xHome[i] >= startxPosHome[i]) 
          xHome[i] -= 2;
        if (yHome[i] < startyPosHome[i]) 
            yHome[i] += 0.3;
        if (yHome[i] > startyPosHome[i])
            yHome[i] -= 0.3;
      }
      strokeWeight(3);
      fill(this.jerseyColor);
      square(xHome[i], yHome[i], 30);
    }
  }
  
  void drawPlayersAway() {
    for (int i = 0; i < 5; i++) {
      xAway[i] = startxPosAway[i];
      yAway[i] = startyPosAway[i];
      strokeWeight(3);
      fill(this.jerseyColor);
      square(xAway[i], yAway[i], 30);     
  }
 }
  
  void movePlayersAway(){
    for (int i = 0; i < 5; i++) {
      if (ballDirection == true) {
      
        if (xAway[i] <= endxPosAway[i]) 
          xAway[i] += 2;
        if (yAway[i] > endyPosAway[i]) 
            yAway[i] -= 0.3;
        if (yAway[i] < endyPosAway[i])
            yAway[i] += 0.3;
      }
      
      else {
        if (xAway[i] >= startxPosAway[i]) 
          xAway[i] -= 2;
        if (yAway[i] < startyPosAway[i]) 
            yAway[i] += 0.3;
        if (yAway[i] > startyPosAway[i])
            yAway[i] -= 0.3;
      }
      strokeWeight(3);
      fill(this.jerseyColor);
      square(xAway[i], yAway[i], 30);
    }
  }
  
}
