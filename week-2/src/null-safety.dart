void main(){
  String nama = "Fulan Fulana"; // default variable null safety
  String? pacar; // nullable (bisa menerima null)
  String pacarKu = pacar ?? "Gak Ada :("; // Asert variable dari Null ke NonNullable

  print(nama);
  print(pacar);
  print(pacarKu);
}