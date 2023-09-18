void main() {
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  // var names3 = {}; // Creates a map, not a set.

  print("Sebelum diisi");
  print("--------------------------------");

  print(names1);
  print(names2);
  // print(names3);
  print("");
  print("");
  var namaku = {"Izamul","Fikri","2141720171"};

  names1.add("Mohammad");
  names1.addAll(namaku);
  
  print("Sesudah diisi");
  print("--------------------------------");
  print(names1);

  var namaku2 = {"Fahmi", "Mantappu", "2141720171"};
  names2.add("loginc");
  names2.addAll(namaku2);

  print("--------------------------------");
  print(names2);
}
