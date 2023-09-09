import 'package:coffee_shop/models/coffee_model.dart';

class CartItem {
  final int id;
  final CoffeeModel coffeeModel;
  final Size size;
  final int quantity;
  final double total;

  CartItem({
    required this.id,
    required this.coffeeModel,
    required this.size,
    required this.quantity,
    required this.total,
});


  @override
  int get hashCode => Object.hash(id, coffeeModel, size);

  @override
  bool operator ==(Object other) {
    return other is CartItem && id == other.id;
  }

  @override
  String toString() {
    return "id: $id, title: ${coffeeModel.title} quantity: $quantity, size: $size total: $total";
  }

  CartItem copyWith({
    Size? size,
    int? quantity,
    double? total,
}) {
    return CartItem(id: id, coffeeModel: coffeeModel, size: size ?? this.size, quantity: quantity ?? this.quantity, total: total ?? this.total);
  }
}

enum Size {
  min,
  med,
  max,
}