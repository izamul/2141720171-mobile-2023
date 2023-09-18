void main(){
  final List<dynamic> list = List.filled(5,null);
  assert(list.length == 5);

  list[1] = "Fikri Fahmi";
  list[2] = 2141720171;

  assert(list[1] == "Fikri Fahmi");
  assert(list[2] == 2141720171);

  print(list.length);
  print(list[1]);
}