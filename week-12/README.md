# <div style="color:white; background-color:green; height:50px; margin:auto; text-align:center; padding-top:10px">Week 12 - Pemrograman Asynchronous</div>

## Authors

- [@izamulfikri](https://www.github.com/zenosance)

<hr>

## Praktikum 1: Mengunduh Data dari Web Service (API)

Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda pada setiap soal yang ada di beberapa langkah praktikum ini.

        Perhatian: Diasumsikan Anda telah berhasil melakukan setup environment Flutter SDK, VS Code, Flutter Plugin, dan Android SDK pada pertemuan pertama.

### Langkah 1: Buat Project Baru

Buatlah sebuah project flutter baru dengan nama books di folder src week-12 repository GitHub Anda.

Kemudian Tambahkan dependensi http dengan mengetik perintah berikut di terminal.

```dart
flutter pub add http
```

### Langkah 2: Cek file pubspec.yaml

Jika berhasil install plugin, pastikan plugin http telah ada di file pubspec ini seperti berikut.

```dart
dependencies:
  flutter:
    sdk: flutter
  http: ^1.1.0
```

Jika Anda menggunakan macOS, Anda harus mengaktifkan fitur networking pada file macos/Runner/DebugProfile.entitlements dan macos/Runner/Release.entitlements dengan menambahkan kode berikut:


![macos](docs/p1l2.png)

### Langkah 3: Buka file main.dart

Ketiklah kode seperti berikut ini.

<aside style="color:white; background-color:green;"><h3 is-upgraded=""><strong>Soal 1</strong></h3>Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
</aside>

<br>

![soal1](docs/soal1.png)

        Catatan:

        Tidak ada yang spesial dengan kode di main.dart tersebut. Perlu diperhatikan di kode tersebut terdapat widget CircularProgressIndicator yang akan menampilkan animasi berputar secara terus-menerus, itu pertanda bagus bahwa aplikasi Anda responsif (tidak freeze/lag). Ketika animasi terlihat berhenti, itu berarti UI menunggu proses lain sampai selesai.

### Jawab Soal 1

![hasil](docs/soal1.gif)

### Langkah 4: Tambah method getData()

Tambahkan method ini ke dalam class _FuturePageState yang berguna untuk mengambil data dari API Google Books.

![langkah4](docs/p1l4.png)

<aside style="color:white; background-color:green;"><h3 is-upgraded=""><strong>Soal 2</strong></h3>
<ul>
<li>Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel <code>path</code> di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini.<br>
<p class="image-container"><img style="width: 610.00px" src="docs/soal2a.png"></p>
</li>
</ul>
<ul>
<li>Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil. Lakukan <em>capture </em>milik Anda dan tulis di <code>README</code> pada laporan praktikum. Lalu lakukan commit dengan pesan "<strong>W12: Soal 2</strong>".<br>
<p class="image-container"><img style="width: 610.00px" src="docs/soal2b.png"></p>
</li>
</ul>
</aside>

### Jawab Soal 2

![hasil](docs/soal2.png)

### Langkah 5: Tambah kode di ElevatedButton

Tambahkan kode pada onPressed di ElevatedButton seperti berikut.

![langkah 5](docs/p1l5.png)

Lakukan run aplikasi Flutter Anda. Anda akan melihat tampilan akhir seperti gambar berikut. Jika masih terdapat error, silakan diperbaiki hingga bisa running.

<aside style="color:white; background-color:green;"><h3 is-upgraded=""><strong>Soal 3</strong></h3>
<ul>
<li>Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!
</li>
<li>Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 3".</li>
</ul>
</aside>

### Jawab Soal 3

        Pada langkah 5, dalam pengaturan tombol ElevatedButton, kode substring(0, 450) digunakan untuk memotong atau mengambil sebagian dari string hasil respons data. Hal ini dapat bermanfaat untuk membatasi panjang string yang ditampilkan atau mempertahankan hanya sejumlah karakter tertentu. Sementara itu, catchError((_){}) berfungsi untuk menangani kesalahan yang mungkin terjadi selama proses pengambilan data. Jika terjadi kesalahan, pesan "An error occurred" akan ditetapkan ke variabel result, dan antarmuka pengguna akan diperbarui dengan menggunakan setState(). Ini membantu meningkatkan ketahanan aplikasi terhadap kesalahan selama eksekusi dan memberikan umpan balik yang sesuai kepada pengguna.

![hasil](docs/soal3.gif)


<hr>

## Praktikum 2: Menggunakan await/async untuk menghindari callbacks

Ada alternatif penggunaan Future yang lebih clean, mudah dibaca dan dirawat, yaitu pola async/await. Intinya pada dua kata kunci ini:

- async digunakan untuk menandai suatu method sebagai asynchronous dan itu harus ditambahkan di depan kode function.
- await digunakan untuk memerintahkan menunggu sampai eksekusi suatu function itu selesai dan mengembalikan sebuah value. Untuk then bisa digunakan pada jenis method apapun, sedangkan await hanya bekerja di dalam method async.

Berikut ini contoh kode perbedaan Future dengan then dan async/await.

![p2](docs/p2.png)

untuk pemahaman lebih lanjut dapat mengecek video berikut [klik link](https://youtu.be/SmTCmDMi4BY)

Setelah Anda menyelesaikan praktikum 1, Anda dapat melanjutkan praktikum 2 ini. Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda pada setiap soal yang ada di beberapa langkah praktikum ini.


### Langkah 1: Buka file main.dart

Tambahkan tiga method berisi kode seperti berikut di dalam class _FuturePageState.


```dart
Future<int> returnOneAsync() async {
  await Future.delayed(const Duration(seconds: 3));
  return 1;
}

Future<int> returnTwoAsync() async {
  await Future.delayed(const Duration(seconds: 3));
  return 2;
}

Future<int> returnThreeAsync() async {
  await Future.delayed(const Duration(seconds: 3));
  return 3;
}
```

### Langkah 2: Tambah Method count()

Lalu tambahkan lagi method ini di bawah ketiga method sebelumnya.

```dart
  Future count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState((){
      result = total.toString();
    });
  }
```

### Langkah 3: Panggil count()

Lakukan comment kode sebelumnya, ubah isi kode onPressed() menjadi seperti berikut.

```dart
 ElevatedButton(
            child: const Text('GO!'),
            onPressed: () {
              count();
              // setState(() {});
              // getData().then((value) {
              //   result = value.body.toString().substring(0, 450);
              //   setState(() {});
              // }).catchError((_) {
              //   result = "An error occurred";
              //   setState(() {});
              // });
            },
          ),
```

### Langkah 4: Run

Akhirnya, run atau tekan F5 jika aplikasi belum running. Maka Anda akan melihat seperti gambar berikut, hasil angka 6 akan tampil setelah delay 9 detik.

<aside style="color:white; background-color:green;"><h3 is-upgraded=""><strong>Soal 4</strong></h3>
<ul>
<li>Jelaskan maksud kode langkah 1 dan 2 tersebut!
</li>
<li>Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 4".
</li>
</ul>
</aside>

### Jawab Soal 4

            Langkah 1 pada kode di main.dart mengenai penambahan tiga metode returnOneAsync(), returnTwoAsync(), dan returnThreeAsync() di dalam kelas _FuturePageState. Ketiga metode ini adalah metode asinkron yang menggunakan kata kunci async dan menetapkan nilai yang ditunda melalui Future.delayed. Setiap metode mengembalikan nilai yang berbeda setelah penundaan waktu selama 3 detik.

            Langkah 2 menambahkan metode count() di bawah ketiga metode sebelumnya. Metode count() berfungsi untuk menjumlahkan nilai yang dikembalikan oleh ketiga metode asinkron tersebut. Proses penjumlahan dilakukan secara berurutan, dimulai dari returnOneAsync(), diikuti returnTwoAsync(), dan terakhir returnThreeAsync(). Hasil penjumlahan kemudian disimpan dalam variabel total dan diperbarui ke antarmuka pengguna melalui setState() dengan menetapkan nilai result menjadi total yang diubah menjadi string. Seluruh proses ini dilakukan secara asinkron untuk memastikan tidak terjadi blocking pada antarmuka pengguna selama penundaan waktu yang diperlukan oleh metode asinkron.


![jawab 4](docs/soal4.gif)


<hr>

## Praktikum 3: Menggunakan Completer di Future
Menggunakan Future dengan then, catchError, async, dan await mungkin sudah cukup untuk banyak kasus, tetapi ada alternatif melakukan operasi async di Dart dan Flutter yaitu dengan class Completer.

Completer membuat object Future yang mana Anda dapat menyelesaikannya nanti (late) dengan return sebuah value atau error.

Setelah Anda menyelesaikan praktikum 2, Anda dapat melanjutkan praktikum 3 ini. Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda pada setiap soal yang ada di beberapa langkah praktikum ini.

### Langkah 1: Buka main.dart

Pastikan telah impor package async berikut.

```dart
import 'package:async/async.dart';
```

### Langkah 2: Tambahkan variabel dan method

Tambahkan variabel late dan method di class _FuturePageState seperti ini.

```dart
late Completer completer;

Future getNumber() {
  completer = Completer<int>();
  calculate();
  return completer.future;
}

Future calculate() async {
  await Future.delayed(const Duration(seconds : 5));
  completer.complete(42);
}
```

### Langkah 3: Ganti isi kode onPressed()

Tambahkan kode berikut pada fungsi onPressed(). Kode sebelumnya bisa Anda comment.

```dart
getNumber().then((value) {
    setState((){
        result = value.toString();
    }); 
});
```

### Langkah 4: 
Terakhir, run atau tekan F5 untuk melihat hasilnya jika memang belum running. Bisa juga lakukan hot restart jika aplikasi sudah running. Maka hasilnya akan seperti gambar berikut ini. Setelah 5 detik, maka angka 42 akan tampil.

<aside style="color:white; background-color:green;"><h3 is-upgraded=""><strong>Soal 5</strong></h3>
<ul>
<li>Jelaskan maksud kode langkah 2 tersebut!
</li>
<li>Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 5".
</li>
</ul>
</aside>

### Jawab Soal 5

            Pada langkah 2, terdapat penambahan variabel completer dan dua metode baru dalam kelas _FuturePageState. Variabel completer bertipe Completer digunakan untuk mengelola sebuah objek yang akan menyelesaikan atau menolak suatu operasi asinkron di future. Metode getNumber() menginisialisasi completer sebagai objek baru dan kemudian memanggil metode calculate(). Metode calculate() merupakan metode asinkron yang menunda eksekusi selama 5 detik menggunakan Future.delayed dan kemudian menyelesaikan completer dengan nilai 42. Penggunaan Completer memungkinkan kontrol yang lebih baik dalam menangani hasil operasi asinkron, di mana metode getNumber() dapat mengembalikan completer.future untuk mendapatkan nilai yang akan diselesaikan di future.

![soal5](docs/soal5.gif)

### Langkah 5: Ganti method calculate()

Gantilah isi code method calculate() seperti kode berikut, atau Anda dapat membuat calculate2()

```dart
  Future calculate() async {
    try{
    await Future.delayed(const Duration(seconds: 5));
    completer.complete(42);
    }
    catch(_){
      completer.completeError({});
    }
  }
```

### Langkah 6: Langkah 6: Pindah ke onPressed()

Ganti menjadi kode seperti berikut.

```dart
getNumber().then((value) {
  setState(() {
    result = value.toString();
  });
}).catchError((e) {
  result = 'An error occurred';
});
```

<aside style="color:white; background-color:green;"><h3 is-upgraded=""><strong>Soal 6</strong></h3>
<ul>
<li>Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut!
</li>
<li>Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 6".
</li>
</ul>
</aside>

### Jawab Soal 6

            Pada Langkah 5, perubahan pada method calculate() bertujuan untuk menangani kesalahan yang mungkin terjadi selama eksekusi operasi asinkron. Dengan menambahkan blok try-catch, kode tersebut mencoba menyelesaikan completer dengan nilai 42 setelah penundaan 5 detik menggunakan await Future.delayed. Jika terjadi kesalahan selama eksekusi, blok catch akan menangkap kesalahan tersebut dan menyelesaikan completer dengan kesalahan yang ditandai sebagai objek kosong.

            Langkah 6 menggantikan kode pada onPressed() dengan metode getNumber().then(...).catchError(...) untuk menangani hasil dan kesalahan dari operasi asinkron. Setelah operasi selesai, nilai yang diperoleh dari getNumber() akan diperbarui ke variabel result dan diubah menjadi string untuk ditampilkan. Jika terjadi kesalahan selama eksekusi, pesan 'An error occurred' akan ditetapkan ke variabel result. Pergantian ini membantu dalam menangani hasil dan kesalahan operasi asinkron secara lebih terstruktur.

    