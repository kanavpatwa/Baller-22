void drawCourt(){
  fill(255, 234, 143);
  rect(0,200, 800, 600);
  
  fill(0);
  
  line(0, 250, 800, 250);
  line(0, 550, 800, 550);
  line(400,250, 400, 550);
  rect(0, 350, 150,100);
  rect(650, 350, 800, 100);
  noFill();
  circle(400, 400, 100);
  
  stroke(255, 0, 0);
  strokeWeight(3);
  circle(15, 400, 30);
  circle(785, 400, 30);
  
  stroke(0);
  strokeWeight(2);
  
}
