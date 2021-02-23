void setup() {
  size(800, 800);
  smooth();
  
  background(255);
  noStroke();
  fill(232,255,206,100);
  for(int y=0; y<=height; y+=20) {
    for(int x=0; x<=width; x+=20) {
      rect(x,y,10,10);
    }
  }
}

void draw() {
  translate(width/2, height/2);
  
  //wakusen
  stroke(50);
  strokeWeight(7);
  strokeJoin(ROUND);
  
  //huku
  fill(255);
  triangle(0,50,-156,310,156,310);
  
  fill(211,4,116);
  triangle(0,50,-138,280,138,280);
  
  //kao
  fill(250,250,214);
  ellipse(0,0,400,350);
  
  //matuge
  line(-90,-45,-75,-25);
  line(60,-45,75,-25);
  
  //me
  fill(50);
  ellipse(-75,-25,25,25);
  ellipse(75,-25,25,25);
  
  //kuti
  fill(255,131,183);
  triangle(-68,25,68,25,0,74);
  
  //happa
  strokeCap(ROUND);
  
  fill(163,214,245);
  ellipse(-150,-275,150,150);
  
  fill(255);
  noStroke();
  ellipse(-173,-305,45,38);
  ellipse(-143,-328,13,11);
  
  fill(165,223,85);
  triangle(-150,-200,-93,-325,0,-175);
  stroke(50);
  line(-150,-200,0,-175);
  line(-93,-325,0,-175);
 
  line(-105,-245,0,-175);
  line(-80,-225,-110,-220);
  line(-65,-220,-67,-245);
  
  //hoppe
  fill(255,168,201);
  noStroke();
  ellipse(-125,10,50,50);
  ellipse(125,10,50,50);
}

void keyPressed() {
  if(key == 'p') {
    saveFrame("kiichan.png");
  }
}
