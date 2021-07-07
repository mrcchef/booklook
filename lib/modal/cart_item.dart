class CartItem {
  final String iconPath;
  final String title;
  final String description;
  final double price;
  final String size;
  final bool isFavourite;
  final bool hasDiscount;
  final int markedPrice;
  final int discountPercent;

  CartItem({
    required this.iconPath,
    required this.title,
    required this.description,
    required this.price,
    required this.size,
    this.isFavourite = false,
    this.hasDiscount = false,
    this.markedPrice = 0,
    this.discountPercent = 0,
  });
}

final List<CartItem> cartItemList = [
  CartItem(
    iconPath: "asset/images/breezy_shirt.jpg",
    title: "Breezy Shirt",
    description: "House of Rare",
    price: 2300,
    size: "XXLL",
    isFavourite: false,
  ),
  CartItem(
    iconPath: "asset/images/lenin_chino.jpg",
    title: "Lenin Chino",
    description: "HighLander",
    price: 658,
    size: "32",
    isFavourite: true,
    hasDiscount: true,
    markedPrice: 1994,
    discountPercent: 20,
  ),
  CartItem(
    iconPath: "asset/images/white_sneakers.jpg",
    title: "White Sneakers",
    description: "Bennetton",
    price: 1658,
    size: "9",
    isFavourite: false,
    hasDiscount: true,
    markedPrice: 1994,
    discountPercent: 20,
  ),
];
