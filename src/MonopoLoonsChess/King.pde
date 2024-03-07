public class King implements Pieces {
  private int x;
  private int y;
  private boolean white;
  private PImage wk = loadImage("whiteking.png");
  private PImage bk = loadImage("blackking.png");
  
  public King(int x, int y, boolean white) {
    this.x = x;
    this.y = y;
    this.white = white;
    wk = loadImage("whiteking.png");
    bk = loadImage("blackking.png");
  }
  
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
          } else if(i==0&&j==0) {
            rect(0, 525, 75, 75);
          } else if(i==0&&j==10) {
            rect(0, 0, 75, 75);
          } else if(i==10&&j==10) {
            rect(525, 0, 75, 75);
          } else if(i==10&&j==0) {
            rect(525, 525, 75, 75);
          }
          noFill();
        }
      }
    }
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
    if (!((checkX==x)&&(checkY==y)) && checkX>=0 && checkX<=10 && checkY>=0 && checkY<=10 && (Math.abs(checkX-x)<=1 && Math.abs(checkY-y)<=1)) {
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
