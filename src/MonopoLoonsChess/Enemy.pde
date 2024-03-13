class Enemy {
  int speed;
  float position, health;
  PImage img;
  
  public void takeDamage(float damage) {
    health = health-damage;
  }
  
  public float xc(float pos) {
    if(pos<=10) {
      if(pos<0.5) {
        return 562.5-75*pos;
      } else if(pos>9.5) {
        return 75-75*(pos-9.5);
      } else {
        return 550-50*pos;
      }
    } else if(pos<=20) {
      return 37.5;
    } else if(pos <= 30) {
      if(pos<20.5) {
        return 37.5+75*(pos-20);
      } else if(pos>29.5) {
        return 525+75*(pos-29.5);
      } else {
        return 50+50*(pos-20);
      }
    } else
    return 562.5;
  }
  public float yc(float pos) {
    if(pos<=10) {
      return 562.5;
    } else if(pos<=20) {
      if(pos<10.5) {
        return 562.5-75*(pos-10);
      } else if(pos>19.5) {
        return 75-75*(pos-19.5);
      } else {
        return 550-50*(pos-10);
      }
    } else if(pos <= 30) {
      return 37.5;
    } else
    if(pos<30.5) {
      return 37.5+75*(pos-30);
    } else if(pos>39.5) {
      return 525+75*(pos-39.5);
    } else {
      return 50+50*(pos-30);
    }
  }
}
