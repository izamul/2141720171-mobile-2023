class mahasiswa{
  String? nama;
  int? umur;

  mahasiswa(this.nama, this.umur);

  String? getNama(){
    return nama!;
  }

  int? getUmur(){
    return umur!;
  }
}