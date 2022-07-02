void main(List<String> args) {
  int A = 1;
  int B = 2;
  A = A + B; //3 = 1+2
  B = A - B; //1 = 3-2
  A = A - B; //2 = 3-1
  print("$A,$B");
}
