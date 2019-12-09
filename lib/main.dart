import 'package:flutter/material.dart';

import './screens/product_overview_screen.dart';
import './screens/product_detail_screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Shop',
        theme: ThemeData(
            fontFamily: 'Lato',
            primarySwatch: Colors.purple,
            accentColor: Colors.deepOrange),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
        });
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Third App - Shop App"),
//       ),
//       body: Center(
//         child: Text("Take a pratice"),
//       ),

//       // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
