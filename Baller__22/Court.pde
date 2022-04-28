void drawCourt(){
  //floor
  fill(255, 234, 143);
  rect(0,200, 800, 600);
  
  //out of bounds
  line(0, 250, 800, 250);
  line(0, 550, 800, 550);
  line(400,250, 400, 550);
  
  //key
  fill(homeColor);
  rect(0, 350, 125,100);
  rect(675, 350, 800, 100);
  
  
  noFill();
  //3-point lines
  
  arc(75,400, 250,250, -PI/2, PI/2);
  line(0,275, 75,275);
  line(0,525, 75,525);
  
  arc(725,400, 250,250, PI/2, 3*PI/2);
  line(725,275, 800,275);
  line(725,525, 800,525);
  
  //center circle
  circle(400, 400, 100);
  
  //nets
  stroke(255, 100, 0);
  strokeWeight(3);
  circle(15, 400, 30);
  circle(785, 400, 30);
  
  stroke(0);
  strokeWeight(2);
  
}
