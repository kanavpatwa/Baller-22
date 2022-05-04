class Crowd {
  Team homeTeam;
  Team awayTeam;
  int x;
  int y;
  color jerseyColor[][];

  Crowd(Team h, Team a) {
    this.homeTeam = h;
    this.awayTeam = a;
    jerseyColor = new color[20][8];
  }

  void createCrowd() {
    x = 0;
    for (int i = 0; i < 20; i++) {
      y = 0;
      for (int j = 0; j < 8; j++) {
        int rand = round(random(1, 2));
        if (rand == 1)
          jerseyColor[i][j] = homeColor;
        else
          jerseyColor[i][j] = awayColor;

        fill(jerseyColor[i][j]);
        square(x, y, 25);
        y += 25;
      }
      x += 25;
    }
  }
}
