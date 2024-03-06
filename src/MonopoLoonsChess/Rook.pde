public class Rook implements Pieces{
  private int x;
  private int y;
  private boolean white;
  private PImage wr;
  private PImage br;
  
  public Rook(int x, int y, boolean white) {
    this.x = x;
    this.y = y;
    this.white = white;
    wr = loadImage("whiterook.png");
    br = loadImage("blackrook.png");
  }
  
  public void setX(int x) {
    this.x = x;
  }
  
  public void setY(int y) {
    this.y = y;
  }
  
  public void setWhite(boolean white) {
    this.white = white;
  }
  
  public void attack() {
    for(int i = 0; i<=10; i++) {
      for(int j = 0; j<=10; j++) {
        if(checkMove(i, j)) {
          fill(255, 0, 0, 64);
          if(i>0&&i<10&&j>0&&j<10) {
            rect(i*50+25, 600-(j*50+75), 50, 50);
          } else if(i==0&&j!=10&&j!=0) {
            rect(0, 600-(j*50+75), 75, 50);
          } else if(j==10&&i!=10&&i!=0) {
            rect(i*50+25, 0, 50, 75);
          } else if(i==10&&j!=10&&j!=0) {
            rect(525, 600-(j*50+75), 75, 50);
          } else if(j==0&&i!=10&&i!=0) {
            rect(i*50+25, 525, 50, 75);
          }
          noFill();
        }
      }
    }
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
    if (!((checkX==x)&&(checkY==y)) && checkX>=0 && checkX<=10 && checkY>=0 && checkY<=10 && ((checkX==x)||(checkY==y))) {
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
