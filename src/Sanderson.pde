

void setup() {
  size(900, 600);
  background(144, 238, 144);
}

void draw() {
  rect(0, 0, 600, 600);
  fill(144, 238, 144);
  rect(0, 0, 100, 100);
  for(int i = 0; i<8; i++) {
    rect(100+50*i, 0, 50, 100);
    rect(100+50*i, 500, 50, 100);
    rect(0, 100+50*i, 100, 50);
    rect(500, 100+50*i, 100, 50);
  }
}
