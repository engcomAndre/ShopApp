import 'package:flutter/material.dart';

import '../screens/product_detail_screens.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;
  // final double price;

  // ProductDetailScreen(this.title,this.price);
  static const routeName = "/product-detail";

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
    );
  }
}
