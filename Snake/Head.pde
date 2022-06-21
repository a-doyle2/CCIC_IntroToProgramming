public class Head {
  public int x = 40;
  public int y = 40;
  public int velX; public int velY;
  public int len = 0;
  public boolean lose = false;
  public boolean win = false;
  
  public void getDir() {
    switch(pKey) {
      case 'w':
        if (velY != 1) {
          velX = 0;
          velY = -1;
        }
        break;
      case 's':
        if (velY != -1) {
            velX = 0;
            velY = 1;
          }
        break;
      case 'a':
        if (velX != 1) { 
          velX = -1;
          velY = 0;
        }
        break;
      case 'd':
        if (velX != -1) {
          velX = 1;
          velY = 0;
        }
        break;
    }
  }
  
  public void update() {
    if (len >= 60) {
      win = true;
    }
    getDir();
    newBody();
    collisions();
    x += velX * 20;
    y += velY * 20;
    apples();
    if (x < 0 || x >= 400 || y < 0 || y >= 400) {
      lose = true;
    }
  }
  
  public void collisions() {
    for (Body body : snakeList) {
      if (body.x == x && body.y == y && body.draw && !(velX == 0 && velY == 0)) {
        lose = true;
      }
    }
  }
  
  public void apples() {
    for (Apple apple : appleList) {
      if (apple.draw && apple.x == x && apple.y == y) {
        eat(apple);
      }
    }
  }
  
  public void eat(Apple apple) {
    apple.toggleDraw();
    len += 1;
  }
  
  public void newBody() {
    snakeList.add(new Body(x, y, ticks, len));
  }
}
