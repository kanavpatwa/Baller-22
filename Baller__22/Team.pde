class Team {
  String name;
  color jerseyColor;
  Player[] players;
  
  Team(String n, color c){
    this.name = n;
    this.jerseyColor = c;
    players = new Player[5];
    
    for (int i = 0; i < 5; i++) {
      players[i] = new Player(startxPos[i],startyPos[i]);
    }
  }
  
  
  void draw(){
  
  }
  
}
