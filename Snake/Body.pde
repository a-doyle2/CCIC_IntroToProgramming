public class Body {
  public int x;
  public int y;
  public int spawnTicks;
  public int headLen;
  public boolean draw;
  public PVector pos;
  
  public Body(int x, int y, int spawnTicks, int headLen) {
    this.x = x; this.y = y; this.spawnTicks = spawnTicks; this.headLen = headLen;
    pos = new PVector(x, y);
  }
  
  public void updateList() {
    if (freeSpaces.contains(pos) && draw) {
      freeSpaces.remove(pos);
    } else if (!freeSpaces.contains(pos) && !draw) {
      freeSpaces.add(pos);
    }
  }
  
  public void drawBody() {
    if (ticks < spawnTicks + headLen) {
      draw = true;
    } else {
      draw = false;
    }
  }
}
