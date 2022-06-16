public class Movie {
  private String genre;
  public int time;
  public int randomNum;
  
  public Movie(int time, String genre) {
    this.time = time;
    this.genre = genre;
  }
  
  public String getGenre() {
    return genre;
  }
  
  public void changeNum(int addend) {
    randomNum += addend;
  }
  
  public int randint(int max) {
    if (max > randomNum) {
      return floor(random(max-randomNum)+randomNum);
    }
    else {
      return floor(random(randomNum-max)+max);
    }
  }
  
}
