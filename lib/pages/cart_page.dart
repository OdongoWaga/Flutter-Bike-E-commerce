import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  CartPageState createState() => CartPageState();
}

class CartPageState extends State<CartPage> {
  Widget _cartTab() {
    return Text('cart');
  }

  Widget _cardsTab() {
    return Text('cards');
  }

  Widget _ordersTab() {
    return Text('orders');
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
            appBar: AppBar(
                title: Text('Cart Page'),
                bottom: TabBar(
                  labelColor: Colors.deepOrange[600],
                  unselectedLabelColor: Colors.deepOrange[900],
                  tabs: [
                    Tab(icon: Icon(Icons.shopping_cart)),
                    Tab(icon: Icon(Icons.credit_card)),
                    Tab(icon: Icon(Icons.receipt))
                  ],
                )),
            body:
                TabBarView(children: [_cartTab(), _cardsTab(), _ordersTab()])));
  }
}
