public class Rook implements Pieces{
  private int x;
  private int y;
  private boolean white;
  private PImage wr = loadImage("whiterook.png");
  private PImage br = loadImage("blackrook.png");
  
  public void setX(int x) {
    this.x = x;
  }
  
  public void setY(int y) {
    this.y = y;
  }
  
  public void setWhite(boolean white) {
    this.white = white;
  }
  
  @Override
  public void drawPiece() {
    if(white) {
      image(wr, x*50+50, 600-(y*50+50), 50, 50);
    } else {
      image(br, x*50+50, 600-(y*50+50), 50, 50);
    }
  }
  
  @Override
  public boolean checkMove(int checkX, int checkY) {
    if (!((checkX==x)&&(checkY==y)) && checkX>0 && checkX<9 && checkY>0 && checkY<9 && ((checkX==x)||(checkY==y))) {
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
