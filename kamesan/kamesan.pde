PImage img;
 
void setup(){
  size(900, 600);
  img = loadImage("umi.png");
  image(img, 0, 0);
}
 
void draw(){
}

void mouseClicked(){
  
  //kame
  if(key == '1'){
    kame(mouseX, mouseY, 0.8);
  }
  
  //kani
  if(key == '2'){
    kani(mouseX, mouseY, 0.5);
  }
  
  //manbou_midori
  if(key == '3'){
    manbou(mouseX, mouseY, 1);
  }
  
  //kozakana
  if(key == '4'){
    kozakana(mouseX+65, mouseY+10, 0.5);
    kozakana(mouseX+38, mouseY-20, 0.5);
    kozakana(mouseX, mouseY, 0.5);
  }
  
  //hitode_
  if(key == '5'){
    hitode(mouseX, mouseY, 0.4);
  }
  
  //kusa
  if(key == '6'){
    strokeWeight(3);
    pushMatrix();
    fill(100, 160, 15);
    stroke(100, 160, 15);
    translate(mouseX, mouseY);
    rotate(-PI/90);
    kusa(0, 0, 0.5);
    popMatrix();
    pushMatrix();
    translate(mouseX+2, mouseY);
    rotate(PI/20);
    kusa(0, 0, 0.6);
    popMatrix();
  }
}

void kame(float width, float height, float size){
  pushMatrix();
  translate(width, height);
  scale(size);

  //kame_atama
  stroke(196, 196, 134);
  strokeWeight(30);
  fill(196, 196, 134);
  beginShape();
  curveVertex(6, -48);
  curveVertex(6, -48);
  curveVertex(3, -70);
  curveVertex(20, -93);
  curveVertex(43, -85);
  curveVertex(36, -64);
  curveVertex(4, -48);
  curveVertex(4, -48);
  endShape();
  
  //kame_teasi
  stroke(196, 196, 134);
  strokeWeight(19);
  line(-20, -27, -45, -57);
  line(10, -3, 68, -35);
  line(-20, 27, -40, 52);
  line(0, 3, 28, 58);
  strokeWeight(9);
  line(0, 0, -8, 66);
  
  //kame_koura
  pushMatrix();
  stroke(136, 136, 86);
  strokeWeight(5);
  fill(152, 152, 86);
  rotate(PI/10);
  ellipse(0, 0, 102, 112);
  fill(152, 152, 86);
  ellipse(0, 0, 82, 92);  
  popMatrix();
  
  //kame_me
  noStroke();
  fill(10);
  ellipse(28, -88, 6, 6);
  
  //kame_kuti
  noFill();
  stroke(10);
  strokeWeight(4);
  arc(43, -85, 20, 20, PI/6, 2*PI/3);
  
  popMatrix();
}

void kani(float width, float height, float size){
  pushMatrix();
  translate(width, height);
  scale(size);
  
  //kani_ashi
  stroke(224, 71, 71);
  strokeWeight(7);
  line(-20, -30, -25, -50);
  line(-50, -17, -80, -45);
  line(-50, -3, -90, -1);
  line(-47, 13, -88, 18);
  line(-40, 24, -80, 35);
  line(20, -30, 25, -53);
  line(50, -17, 80, -45);
  line(50, -3, 90, -1);
  line(47, 13, 88, 18);
  line(40, 24, 80, 35);
  
  //kani_me
  strokeWeight(5);
  fill(255);
  ellipse(-25, -60, 20, 20);
  ellipse(25, -60, 20, 20);
  fill(10);
  noStroke();
  ellipse(-24, -59, 10, 10);
  ellipse(26, -59, 10, 10);
   
  //kani_onaka
  fill(240, 96, 96);
  noStroke();
  beginShape();
  curveVertex(-50, -40);
  curveVertex(-50, -40);
  curveVertex(50, -40);
  curveVertex(50, 40);
  curveVertex(-50, 40);
  curveVertex(-50, -40);
  curveVertex(50, -40);
  endShape();
  
  //kani_kuti
  stroke(224, 71, 71);
  strokeWeight(7);
  arc(0, -25, 50, 50, PI/6, 5*PI/6);
  
  //kani_hasami
  fill(240, 96, 96);
  noStroke();
  pushMatrix();
  translate(-88, -55);
  rotate(-3*PI/4);
  arc(0, 0, 55, 35, PI/6, 11*PI/6);
  popMatrix();
  pushMatrix();
  translate(88, -55);
  rotate(7*PI/4);
  arc(0, 0, 55, 35, PI/6, 11*PI/6);
  popMatrix(); 
  
  popMatrix();
}


void kozakana(float width, float height, float size){  
  pushMatrix();
  translate(width, height);
  scale(size);
  
  fill(255, 134, 187);
  stroke(255, 134, 187);
  strokeWeight(3);
  
  //kozakana_karada
  beginShape();
  curveVertex(-20, 0);
  curveVertex(-20, 0);
  curveVertex(-10, -10);
  curveVertex(0, -12);
  curveVertex(10, -10);
  curveVertex(24, 0);
  curveVertex(10, 10);
  curveVertex(0, 12);
  curveVertex(-10, 10);
  curveVertex(-20, 0);
  curveVertex(-10, -10);
  curveVertex(-10, -10);
  endShape();
  
  //kozakana_sippo
  beginShape();
  curveVertex(24, 0);
  curveVertex(30, -8);
  curveVertex(30, 8);
  curveVertex(24, 0);
  curveVertex(30, -8);
  curveVertex(30, -8);
  endShape();
  
  popMatrix();
}

void manbou(float width, float height, float size){  
  pushMatrix();
  translate(width, height);
  scale(size);
  
  fill(150, 219, 73);
  stroke(150, 219, 73);
  strokeWeight(3);
  
  //manbou_karada
  beginShape();
  curveVertex(-30, 0);
  curveVertex(-30, 0);
  curveVertex(-20, -15);
  curveVertex(-10, -21);
  curveVertex(0, -23);
  curveVertex(45, -25);
  curveVertex(40, -16);
  curveVertex(45, -8);
  curveVertex(40, 0);
  curveVertex(45, 8);
  curveVertex(40, 16);
  curveVertex(45, 25);
  curveVertex(0, 28);
  curveVertex(-20, 20);
  curveVertex(-30, 0);
  curveVertex(-20, -15);
  curveVertex(-10, -21);
  curveVertex(0, -22);
  curveVertex(0, -23);
  endShape();
  ellipse(23, 1, 14, 85);
  
  //manbou_kuti
  stroke(255, 245, 248);
  strokeWeight(7);
  strokeJoin(ROUND);
  line(-28, 1, -31, -5);
  line(-28, 1, -31, 7);
  
  //manbou_me
  fill(10);
  strokeWeight(2);
  ellipse(-8, -1, 8, 8);
  
  popMatrix();
}

void kusa(float width, float height, float size){
  translate(width, height);
  scale(size);
  
  beginShape();
  curveVertex(0, 0);
  curveVertex(0, 0);
  curveVertex(8, -30);
  curveVertex(-10, -70);
  curveVertex(-13, -90);
  curveVertex(-10, -110);
  curveVertex(-11, -130);
  curveVertex(-5, -110);
  curveVertex(-8, -90);
  curveVertex(-8, -70);
  curveVertex(14, -30);
  curveVertex(0, 0);
  curveVertex(0, 0);
  endShape();
}

void hitode(float width, float height, float size){
  pushMatrix();
  translate(width, height);
  scale(size);
  
  //hitode1
  fill(139, 63, 188);
  stroke(139, 63, 188);
  strokeWeight(7);
  
  beginShape();
  curveVertex(-65, -15);
  curveVertex(-65, -15);
  curveVertex(-20, -30);
  curveVertex(5, -65);
  curveVertex(20, -30);
  curveVertex(65, -23);
  curveVertex(34, 13);
  curveVertex(50, 55);
  curveVertex(3, 37);
  curveVertex(-40, 58);
  curveVertex(-32, 10);
  curveVertex(-65, -15);
  curveVertex(-20, -30);
  curveVertex(-20, -30);
  endShape();  

  //hitode2
  fill(198, 150, 229);
  stroke(198, 150, 229);
  strokeJoin(ROUND);
  strokeWeight(5);
  
  beginShape();
  curveVertex(0, -3);
  curveVertex(0, -3);
  curveVertex(-60, -13);
  curveVertex(0, 0);
  curveVertex(3, -58);
  curveVertex(0, 0);
  curveVertex(60, -20);
  curveVertex(0, 0);
  curveVertex(45, 50);
  curveVertex(-2, 0);
  curveVertex(-36, 55);
  curveVertex(0, 0);
  curveVertex(0, 0);
  endShape();  
 
  popMatrix();
}

void keyPressed() {
  if(key == 'p') {
    saveFrame("kamesan.png");
  }
}
