int a;
int z = 3;
int reset = 3;
int randomColor;

void setup() {
  size(1000, 1000);
}

void draw() {
if (reset%2 == 1){
  for (int y = 0; y <= 1100; y += 35) {
    if (z % 2 == 1) {
      a = 30;
  } else {
      a = 0;
  }
  
  for (int x = 0; x <= 1100; x += 60) {
      scale(x, y);
    }
  }
}

  else if (reset%2 ==0 && randomColor == 1){
      fill(255,random(255),random(255));
      noStroke();
      ellipse(mouseX, mouseY, 100,100);
  }

  else if (reset%2 ==0 && randomColor == 2){
      fill(random(255),random(230,255),random(255));
      noStroke();
      ellipse(mouseX, mouseY, 100,100);
  }

  else if (reset%2 ==0 && randomColor == 3){
      fill(random(255),random(255),255);
      noStroke();
      ellipse(mouseX, mouseY, 100,100);
  }
}

void scale(int x, int y){
    fill(random(100,255), random(100,255), random(100,255));
    stroke(random(100,255), random(100,255), random(100,255));
    strokeWeight(5);
    beginShape();
    curveVertex(0 - 10 - 10 + x + a, 1010 - y);
    curveVertex(-10 - 10 - 10 + x + a, 1010 - y);
    curveVertex(-5 - 10 - 10 + x + a, 1045 - y);
    curveVertex(20 - 10 + x - 10 + a, 1070 - y);
    curveVertex(45 + x - 10 + a - 10, 1045 - y);
    curveVertex(50 + x - 10 - 10 + a, 1010 - y);
    curveVertex(50 + x + a - 10 - 10, 1010 - y);
    endShape();

    z+=1;
  }
 
void mousePressed(){
  redraw();
  reset++;
  randomColor = int(random(1,4));
}
