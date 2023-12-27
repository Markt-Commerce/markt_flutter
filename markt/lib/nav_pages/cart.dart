import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: 20.0,
            semanticLabel: 'back',
          ),
          onPressed: ()=>context.go('/'),
        ),
        title: Text('Basket'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Basket',
            style: TextStyle(
              fontSize: 30.0
            ),
          ),
          ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[],
                  )
        ],
      )
    );
  }
}