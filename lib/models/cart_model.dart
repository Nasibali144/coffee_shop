import 'cart_item.dart';

class Cart {
  final int id;
  final double total;
  final List<CartItem> items;

  Cart({
    required this.id,
    required this.total,
    this.items = const [],
  });

  @override
  int get hashCode => id.hashCode;

  @override
  bool operator ==(Object other) {
    return other is Cart && other.id == id;
  }

  Cart copyWith({
    double? total,
    List<CartItem>? items,
  }) {
    return Cart(id: id, total: total ?? this.total, items: items ?? this.items);
  }

  @override
  String toString() {
    return "id: $id, total: $total items: $items";
  }
}
