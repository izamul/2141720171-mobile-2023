import 'mahasiswa.dart';
void main(){
  mahasiswa profil = new mahasiswa("Fikri", 20);

  for(var i = 0; i < 10; i++){
    print('Nama saya adalah ${profil.getNama()}, sekarang berumur ${profil.getUmur()}');
  }
}