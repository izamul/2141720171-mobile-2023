void main() {
  var record = (1,2);
  print(record);

  print("\nSetelah menjalankan fungsi tukar\n");
  var result = (tukar(record));
  print(result);
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
