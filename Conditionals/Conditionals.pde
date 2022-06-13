float[] coefficients = {1, 4, 4};


if (pow(coefficients[1], 2) - (4 * coefficients[0] * coefficients[2]) < 0) { // b^2-4ac
  println("There are no real solutions!");
} else {
  println("Solution 1:",(((-1 * coefficients[1]) + sqrt(pow(coefficients[1], 2) - (4 * coefficients[0] * coefficients[2])))/2*coefficients[0]));
  println("Solution 2:",(((-1 * coefficients[1]) - sqrt(pow(coefficients[1], 2) - (4 * coefficients[0] * coefficients[2])))/2*coefficients[0]));
}

// (-b + sqrt(b*b - (4 * a * c))) / 2 a
