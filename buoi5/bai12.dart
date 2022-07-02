void main(List<String> args) {
  String s = "Hello word welcome Techmaster";
  String s2 = "";
  for (int i = s.length - 1; i >= 0; i--) {
    s2 += s[i];
  }
  print(s2);
}
