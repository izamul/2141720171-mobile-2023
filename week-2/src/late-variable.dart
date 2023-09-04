void main() {

  // dengan late
  late String isiFungsi = iniLate(); // padahal fungsi dipanggil terlebih dahulu
  print("Anak ke-1");
  print("Anak ke-2");
  print("Anak ke-3");
  print(isiFungsi); // tapi baru dieksekusi ketika variabel late dipanggil
  // batas dengan late

  print("------------- Batas ------------");

  // variabel tanpa late
  String isiFungsi2 = iniLate();
  print("Anak ke-1");
  print("Anak ke-2");
  print("Anak ke-3");
  print(isiFungsi2);
  // batas tanpa late
}

String iniLate(){
  print("Menjalankan Fungsi");
  return "Saya Anak Sehat Indonesia";
}