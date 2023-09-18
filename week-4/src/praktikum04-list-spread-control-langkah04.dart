void main() {

  print("Jika promo active = true");
  bool promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);


  print("Jika promo active = false");
  promoActive = false;
  // ignore: dead_code
  var nav2 = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav2);
}
