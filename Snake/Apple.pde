public class Apple {
  public int x;
  public int y;
  public boolean draw = true;
  
  public Apple(float x, float y) {
    this.x = min(int(x), 380); this.y = min(int(y), 380);
  }
  
  public void toggleDraw() {
    draw = !draw;
  }
}
