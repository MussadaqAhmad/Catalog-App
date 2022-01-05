class CatalogModel {
  static final items = [
    item(
      id: 6008,
      name: "Iphone 12",
      desc: "Apple Iphone 12 genrator",
      price: 999,
      color: "#33505a",
      image: "https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-12-4.jpg",
    )
  ];
}

class item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;
  item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
