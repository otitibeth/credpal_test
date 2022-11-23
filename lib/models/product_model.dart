class Product {
  String image;
  String? sellerLogo;
  String productName;
  double amount;
  double? strikedAmount;

  Product(
      {required this.image,
      required this.amount,
      required this.productName,
      this.sellerLogo,
      this.strikedAmount});
}
