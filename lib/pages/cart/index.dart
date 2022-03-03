import 'package:flutter/material.dart';
// basic
// import 'nav_bar.dart';

class CartPage extends StatefulWidget {
  CartPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Text('Cart page')],
      ),
    );
  }
}
