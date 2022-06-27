class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imageUrl;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.imageUrl});
}

final products = [
  Item(
    id: "shyam001",
    name: "iPhone 12 Pro",
    desc: "Apple iPhone 12th generation",
    price: 100000,
    color: "#33505a",
    imageUrl:
        "https://images-eu.ssl-images-amazon.com/images/I/41xssMLI2DL._SY445_SX342_QL70_FMwebp_.jpg",
  ),
  Item(
    id: "shyam002",
    name: "Pixel5",
    desc: "Google Pixel PhOne 5th Generation",
    price: 90000,
    color: "#00ac51",
    imageUrl:
        "https://images-eu.ssl-images-amazon.com/images/I/41Kv6TePGRL._SX300_SY300_QL70_FMwebp_.jpg",
  )
];
