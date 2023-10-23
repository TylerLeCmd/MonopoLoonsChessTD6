void setup() {
  size(900, 600);
  background(144, 238, 144);
}

void draw() {
  colorMode(RGB, 255);
  fill(144, 238, 144);
  rect(0, 0, 600, 600);
  rect(0, 0, 75, 75);
  rect(525, 0, 75, 75);
  rect(0, 525, 75, 75);
  rect(525, 525, 75, 75);
  for(int i = 0; i<9; i++) {
    rect(75+50*i, 0, 50, 75);
    rect(75+50*i, 525, 50, 75);
    rect(0, 75+50*i, 75, 50);
    rect(525, 75+50*i, 75, 50);
  }
  colorMode(HSB, 360);
  fill(0, 360, 360);
  rect(475, 525, 50, 25);
  rect(375, 525, 50, 25);
  fill(45, 360, 360);
  rect(225, 525, 50, 25);
  rect(125, 525, 50, 25);
  rect(75, 525, 50, 25);
  fill(90, 360, 360);
  rect(50, 475, 25, 50);
  rect(50, 375, 25, 50);
  rect(50, 325, 25, 50);
  fill(135, 360, 360);
  rect(50, 225, 25, 50);
  rect(50, 125, 25, 50);
  rect(50, 75, 25, 50);
  fill(180, 360, 360);
  rect(75, 50, 50, 25);
  rect(175, 50, 50, 25);
  rect(225, 50, 50, 25);
  fill(225, 360, 360);
  rect(325, 50, 50, 25);
  rect(375, 50, 50, 25);
  rect(475, 50, 50, 25);
  fill(270, 360, 360);
  rect(525, 75, 25, 50);
  rect(525, 125, 25, 50);
  rect(525, 225, 25, 50);
  fill(315, 360, 360);
  rect(525, 375, 25, 50);
  rect(525, 475, 25, 50);
}
