public char pKey;
Head head = new Head();
public int pauseUpdate = millis();
public int ticks = 0;
int iterations = 0;
int checks = 0;
int checks1 = 0;
int newX;
int newY;
boolean stay = true;
public ArrayList<PVector> freeSpaces = new ArrayList<PVector>();
public ArrayList<Body> snakeList = new ArrayList<Body>();
public ArrayList<Apple> appleList = new ArrayList<Apple>();
int getApple;

void setup() {
  for (int x = 0; x <= 380; x += 20) {
    for (int y = 0; y <= 380; y += 20) {
      freeSpaces.add(new PVector(x, y));
    }
  }
  textAlign(CENTER);
  appleList.add(new Apple(20*round(round(20 * random(20)) / 20), 20*round(round(20 * random(20))/20)));
  noStroke();
  size(400, 400);
}
void summonApple() {
  iterations = 0;
  for (int i = 0; i < appleList.size(); i++) {
    if (appleList.get(i).draw) {
      break;
    } else {
      appleList.remove(appleList.get(i));
    }
  }
  if (appleList.size() == 0) {
    getApple = floor(random(freeSpaces.size()));
    appleList.add(new Apple(freeSpaces.get(getApple).x, freeSpaces.get(getApple).y));
  }
}

void drawSnake() {
  for (Body body : snakeList) {
    body.drawBody();
    if (body.draw) {
      fill(255);
      square(body.x, body.y, 20);
    }
  }
}

void keyPressed() {
  if (key != CODED) {
    pKey = key;
  }
  if (key == CODED) {
    if (keyCode == UP) {
      pKey = 'w';
    } else if (keyCode == LEFT) {
      pKey = 'a';
    } else if (keyCode == RIGHT) {
      pKey = 'd';
    } else if (keyCode == DOWN) {
      pKey = 's';
    }
  }
}

void draw() {
  if (pauseUpdate + 60- (-pow((1/1.05),head.len-110)) <= millis() && !head.lose && !head.win) {
    background(0);
    for (Apple apple : appleList) {
      if (apple.draw) {
        fill(255, 0, 0);
        square(apple.x, apple.y, 20);
      }
    }  
    head.update();
    summonApple();
    for (Body body : snakeList) {
      body.updateList();
    }
    fill(0,110,255);
    square(head.x, head.y, 20);
    drawSnake();
    textSize(25);
    text("SCORE: "+head.len, 200, 50);
    pauseUpdate = millis();
    ticks += 1;
  }
  if (head.lose) {
    background(255, 0, 0);
    text("SCORE: "+head.len, 200, 50);
    if (pauseUpdate + 3000 <= millis()) {
      noLoop();
      exit();
    }
  }
  if (head.win) {
    background(0, 255, 50);
    text("SCORE: "+head.len, 200, 50);
    if (pauseUpdate + 3000 <= millis()) {
      noLoop();
      exit();
    }
  }
}
