String[] foods = {"chocolate","pho","basically anything Asian"};
foods[0] = "tomatoes";
foods[foods.length-1] = "steak";
// foods[foods.length-1] = "?";

int[][] matrix = {
  {0, -1, -2, -3, -4, -5, -6, -7, -8},
  {1, 0, -1, -2, -3, -4, -5, -6, -7},
  {2, 1, 0, -1, -2, -3, -4, -5, -6},
  {3, 2, 1, 0, -1, -2, -3, -4, -5},
  {4, 3, 2, 1, 0, -1, -2, -3, -4},
  {5, 4, 3, 2, 1, 0, -1, -2, -3},
  {6, 5, 4, 3, 2, 1, 0, -1, -2},
  {7, 6, 5, 4, 3, 2, 1, 0, -1},
  {8, 7, 6, 5, 4, 3, 2, 1, 0}
};
int indeX = 3;
int indeY = 5;
print(matrix[indeX][indeY]);
