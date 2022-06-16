void setup() {
  Movie null1 = new Movie(-1, "null");
  Movie moonlight = new Movie(111, "Drama");
  Movie null2 = new Movie(-1, "null");
  
  println(null1.getGenre());
  null1.changeNum(3);
  println(null1.randint(5));
  
  println(null2.getGenre());
  null2.changeNum(3);
  println(null2.randint(5));
  
  println(moonlight.getGenre());
  moonlight.changeNum(3);
  println(moonlight.randint(5));
}
void draw() {
}
