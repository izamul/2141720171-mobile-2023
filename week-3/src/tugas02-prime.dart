void main(){
  num number = 201;
  num findNumber = 199;
  bool isPrime;

  print("List Bilangan Prima 0-201");
  print("--------------------------");

  for(var i=2; i<=number; i++){
    isPrime = true;

    for(var j=2; j<i; j++){
        if(i%j==0){
          isPrime = false;
          break;
        }
    }

      if(isPrime){
        print(i);
        if(i==findNumber){
          print("----------------");
          print("Angka 199 Ketemu");
          print("----------------");
          print("Nama   : Mohammad Izamul Fikri Fahmi");
          print("NIM    : 2141720171");
          print("----------------");
        }
      }
  }
}