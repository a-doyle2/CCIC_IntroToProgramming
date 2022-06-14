print("{");
for(int i = 0; i < 100; i++) {
  print(i + ", ");
}
println("100}");

print("{");
int i = 0;
while(i > -100) {
  print(i+", ");
  i--;
}
println("-100}");

print("{");
i = 0;
while(i < 199) {
  i += 2;
  print(i+", ");
}
print("200}\n\n\n");

String[] array = {"t","a","c","o","c","a","t"};
int idx = 0;
while (idx < ceil(float(array.length) / 2)) {
  if (!(array[idx] == array[array.length-idx-1])) {
    break;
  }
  idx++;
}
if (idx == ceil(float(array.length) / 2)) {
  println("The array contains a palindrome!");
} else {
  println("The array does not contain a palindrome!");
}

int[][] matrix = {
  {2, 9, 0},
  {1, 3, 5},
  {2, 4, 7},
  {8, 1, 5}
};
for(int[] row : matrix) {
  for(int num : row) {
    print(num+" ");
  }
  println();
}
