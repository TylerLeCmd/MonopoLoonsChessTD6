public class King implements Pieces {
  private int x;
  private int y;
  private boolean white;
  private PImage wk = loadImage("whiteking.png");
  private PImage bk = loadImage("blackking.png");
  
  public void setX(int x) {
    this.x = x;
  }
  public void setY(int y) {
    this.y = y;
  }
  public int getX() {
    return this.x;
  }
  public int getY() {
    return this.y;
  }
  public void setWhite(boolean white) {
    this.white = white;
  }
  
  @Override
  public void drawPiece() {
    if(white) {
      image(wk, x*50+50, 600-(y*50+50), 50, 50);
    } else {
      image(bk, x*50+50, 600-(y*50+50), 50, 50);
    }
  }
  
  @Override
  public boolean checkMove(int checkX, int checkY) {
    if (!((checkX==x)&&(checkY==y)) && checkX>0 && checkX<9 && checkY>0 && checkY<9 && (Math.abs(checkX-x)<=1 && Math.abs(checkY-y)<=1)) {
      return true;
    } else {
      return false;
    }
  }
  
  @Override
  public void move(int checkX, int checkY) {
    if(checkMove(checkX, checkY)) {
      x = checkX;
      y = checkY;
    }
  }
}
