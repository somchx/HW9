int sum(int a, int b, [int c = 0]) {
  return a + b + c;
}

void main() {
  var result1 = sum(1, 2);
  var result2 = sum(3, 4, 5);
  print(result1);
  print(result2);
}
