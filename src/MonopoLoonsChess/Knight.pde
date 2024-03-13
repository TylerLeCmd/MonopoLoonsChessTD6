public class Knight implements Pieces {
  private int x;
  private int y;
  private float damage;
  private boolean white;
  private boolean a;
  private PImage wk;
  private PImage bk;
  
  public Knight(int x, int y, boolean white) {
    this.x = x;
    this.y = y;
    this.white = white;
    damage = 10;
    a = false;
    wk = loadImage("whiteknight.png");
    bk = loadImage("blackknight.png");
  }
  
  public void setX(int x) {
    this.x = x;
  }
  public void setY(int y) {
    this.y = y;
  }
  
  public void attack() {
    
    for(int i = 0; i<=10; i++) {
      for(int j = 0; j<=10; j++) {
        if(checkMove(i, j)) {
          fill(255, 0, 0, 64);
          if(i>0&&i<10&&j>0&&j<10) {
            rect(i*50+25, 600-(j*50+75), 50, 50);
          } else if(i==0&&j!=10&&j!=0) {
            int yTemp = 600-(j*50+75);
            rect(0, yTemp, 75, 50);
            for(int k = 0; k<9; k++) {
              if(yTemp+25>squares.get(k+11).getStartY() && yTemp+25<squares.get(k+11).getEndY() && !a) {
                squares.get(k+11).addDamage(damage);
              }
            }
          } else if(j==10&&i!=10&&i!=0) {
            int xTemp = i*50+25;
            rect(xTemp, 0, 50, 75);
            for(int k = 0; k<9; k++) {
              if(xTemp+25>squares.get(k+21).getStartX() && xTemp+25<squares.get(k+21).getEndX() && !a) {
                squares.get(k+21).addDamage(damage);
              }
            }
          } else if(i==10&&j!=10&&j!=0) {
            int yTemp = 600-(j*50+75);
            rect(525, yTemp, 75, 50);
            for(int k = 0; k<9; k++) {
              if(yTemp+25>squares.get(k+31).getStartY() && yTemp+25<squares.get(k+31).getEndY() && !a) {
                squares.get(k+31).addDamage(damage);
              }
            }
          } else if(j==0&&i!=10&&i!=0) {
            int xTemp = i*50+25;
            rect(xTemp, 525, 50, 75);
            for(int k = 0; k<9; k++) {
              if(xTemp+25>squares.get(k+1).getStartX() && xTemp+25<squares.get(k+1).getEndX() && !a) {
                squares.get(k+1).addDamage(damage);
              }
            }
          } else if(i==0&&j==0) {
            rect(0, 525, 75, 75);
            if(!a) {
              squares.get(10).addDamage(damage);
            }
          } else if(i==0&&j==10) {
            rect(0, 0, 75, 75);
            if(!a) {
              squares.get(20).addDamage(damage);
            }
          } else if(i==10&&j==10) {
            rect(525, 0, 75, 75);
            if(!a) {
              squares.get(30).addDamage(damage);
            }
          } else if(i==10&&j==0) {
            rect(525, 525, 75, 75);
            if(!a) {
              squares.get(0).addDamage(damage);
            }
          }
          noFill();
        }
      }
    }
    a = true;
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
    if (!((checkX==x)&&(checkY==y)) && checkX>=0 && checkX<=10 && checkY>=0 && checkY<=10 && ((Math.abs(checkX-x)==1 && Math.abs(checkY-y)==2)||(Math.abs(checkX-x)==2 && Math.abs(checkY-y)==1))) {
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
