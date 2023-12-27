import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
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
        title: Text('Favorites'),
      ),
      body: Column(
        children: <Widget>[
                Text('Favorites'),
                ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[],
                  )
              ],
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          );
  }
}