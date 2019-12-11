import 'package:flutter/foundation.dart';

import '../providers/cart.dart';

class OrdersItems {
  @required
  final String id;
  @required
  final double amount;
  @required
  final List<CartItem> products;
  @required
  final DateTime dateTime;

  OrdersItems({this.id, this.amount, this.products, this.dateTime});
}

class Orders with ChangeNotifier {
  List<OrdersItems> _ordersItems = [];

  List<OrdersItems> get orders {
    return [..._ordersItems];
  }

  void addOrder(List<CartItem> cartProducts, double total) {
    orders.insert(
        0,
        OrdersItems(
            id: DateTime.now().toString(),
            amount: total,
            dateTime: DateTime.now(),
            products: cartProducts));
    notifyListeners();
  }
}
