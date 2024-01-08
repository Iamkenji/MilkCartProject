class product {
  String proname;
  String imagePath;
  String quantity;
  String price;

  product({
    required this.proname,
    required this.imagePath,
    required this.quantity,
    required this.price,
  });

  String get _proname => proname;
  String get _imagePath => imagePath;
  String get _quantity => quantity;
  String get _price => price;
}