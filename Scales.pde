void setup() {
size(500, 500);
}
void draw() {
int z = 3;
int a;
for (int y = 0; y <= 1100; y += 35) {
 
  if (z % 2 == 1)
    a = 30;
  else
    a = 0;
 
  for (int x = 0; x <= 1100; x += 60) {
    float c = random(100,255);
    float d = random(100, 255);
    float e = random(100, 255);
    float f = random(100, 255);
    float g = random(100, 255);
    float h = random(100, 255);
    fill(c,d,e);
    stroke (f, g, h);
    beginShape();
    curveVertex(0-10-10 + x + a, 1010 - y);
    curveVertex(-10-10-10 + x + a, 1010 - y);
    curveVertex(-5 -10-10+ x + a, 1045 - y);
    curveVertex(20 -10+ x-10 + a, 1070 - y);
    curveVertex(45 + x-10 + a-10, 1045 - y);
    curveVertex(50 + x -10-10+ a, 1010 - y);
    curveVertex(50 + x + a-10-10, 1010 - y);
    endShape();
    noFill();
  }
  z = z + 1;
}

 
   
for (int y = 0; y <= 1100; y += 35) {
 
  if (z % 2 == 1)
    a = 0;
  else
    a = 30;
 
  for (int x = 0; x <= 1100; x += 60) {
    noFill();
    strokeWeight(2.5);
    float i = random(50);
    float j = random(50);
    float k = random(50);
    stroke (205+i,205+j,205+k);
ellipse(30+x+a,950-y,5,15);
    ellipse(30+a+x,960-y,10,30);
  }
  z = z + 1;
}
  noStroke();
  fill(random(255),random(255),random(255));
  ellipse(mouseX, mouseY, 50,50);
  
}

