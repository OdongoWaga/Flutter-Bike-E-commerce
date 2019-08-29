import 'package:meta/meta.dart';

class Product {
  dynamic id;
  String name;
  String description;
  num price;
  Map<String, dynamic> picture;

  Product(
      {@required this.id,
      @required this.name,
      @required this.description,
      @required this.price,
      @required this.picture});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        price: json['price'],
        picture: json['picture']);
  }
}
