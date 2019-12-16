import 'package:flutter/foundation.dart';

import '../providers/cart.dart';

class OrderItem {
  @required
  final String id;
  @required
  final double amount;
  @required
  final List<CartItem> products;
  @required
  final DateTime dateTime;

  OrderItem({this.id, this.amount, this.products, this.dateTime});
}

class Orders with ChangeNotifier {
  List<OrderItem> _ordersItems = [];

  List<OrderItem> get orders {
    return [..._ordersItems];
  }

  void addOrder(List<CartItem> cartProducts, double total) {
    _ordersItems.insert(
        0,
        OrderItem(
            id: DateTime.now().toString(),
            amount: total,
            dateTime: DateTime.now(),
            products: cartProducts));
    notifyListeners();
  }
}
