void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';


  // perubahan untuk langkah 3 

  gifts['nama'] = 'izamul fikri';
  gifts['nim'] = 2141720171;

  nobleGases[0] = 'izamul fahmi';
  nobleGases[1] = 2141720171;

  mhs1['sixth'] = 'm izamul';
  mhs1['seventh'] = '2141720171';

  mhs2[19] = 'izamul fikri fahmi';
  mhs2[20] = '2141720171';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
