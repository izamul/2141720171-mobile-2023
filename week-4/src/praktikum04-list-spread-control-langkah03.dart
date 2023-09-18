void main() {
  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);

  var data = ['izamul fikri', 214170271];
  var list4 = [list1, ...?data];

  print(list1);
  print(list3);
  print(list4);
}
