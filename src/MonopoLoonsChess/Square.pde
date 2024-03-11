public class Square {
  private int n;
  private float startX;
  private float endX;
  private float startY;
  private float endY;
  private float damage;
  
  public Square(int n, float startX, float endX, float startY, float endY) {
    this.n = n;
    this.startX = startX;
    this.startY = startY;
    this.endX = endX;
    this.endY = endY;
    damage = 0.0;
  }
  
  public float getN() {
    return n;
  }
  
  public float getStartX() {
    return startX;
  }
  
  public float getStartY() {
    return startY;
  }
  
  public float getEndX() {
    return endX;
  }
  
  public float getEndY() {
    return endY;
  }
  
  public float getDamage() {
    return damage;
  }
  
  public void addDamage(float d) {
    damage = damage + d;
  }
}
