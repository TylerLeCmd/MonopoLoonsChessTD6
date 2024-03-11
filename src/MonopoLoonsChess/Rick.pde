class Rick extends Enemy {
  Rick(){
    position = 0.0;
    img = loadImage("Rick.jpeg");
    health = 20;
    speed = 2;
  }
  
  public void setPosition(int position) {
    this.position = position;
  }
  
  public float getPosition() {
    return position;
  }
  
  public void inc() {
    position += (float) speed/50;
    position = position%40;
  }
  
  public void drawEnemy() {
    image(img, xc(position), yc(position), 50, 50);
  }
}
