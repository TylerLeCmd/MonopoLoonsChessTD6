class Sanderson extends Enemy {
  Sanderson(){
    position = 0;
    img = loadImage("Sanderson.png");
    health = 20;
    speed = 1;
  }
  
  public void setPosition(int position) {
    this.position = position;
  }
  
  public float getPosition(int pos) {
    return pos;
  }
  
  public void inc() {
    position += speed/10;
  }
  
  public void drawEnemy() {
    image(img, xc(position), yc(position), 50, 50);
  }
}
