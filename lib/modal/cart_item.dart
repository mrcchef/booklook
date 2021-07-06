class CartItem {
  final String iconPath;
  final String title;
  final String description;
  final double price;
  final String size;
  final bool isFavourite;

  CartItem({
    required this.iconPath,
    required this.title,
    required this.description,
    required this.price,
    required this.size,
    this.isFavourite = false,
  });
}
