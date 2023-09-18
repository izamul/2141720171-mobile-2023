void main() {
  var login = 'Manager';

  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager')
      'Inventory'
    else if (login case 'Employee')
      'Books'
    else
      'Others'
  ];

  print("Jika login = Manager");
  print(nav2);

  login = 'Employee';

  var nav3 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager')
      'Inventory'
    else if (login case 'Employee')
      'Books'
    else
      'Others'
  ];

  print("Jika login = Employee");
  print(nav3);

  login = 'King';

  var nav4 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager')
      'Inventory'
    else if (login case 'Employee')
      'Books'
    else
      'Others'
  ];

  print("Jika login != Manager && Employee");
  print(nav4);
}
