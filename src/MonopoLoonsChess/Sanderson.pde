class Sanderson extends Enemy {
  Sanderson(){
    position = 0.0;
    img = loadImage("Sanderson.png");
    health = 20;
    speed = 1;
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
