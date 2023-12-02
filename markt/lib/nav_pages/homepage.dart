import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void goToCart(){
   setState(() {
     
   }); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: const Padding(
          padding: EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
          child: Icon(
          Icons.account_circle_outlined,
          weight: 0.5,
          color: Colors.grey,
          size: 50.0,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
        elevation: 2.0,
        toolbarHeight: 80.0,
        actions: const <Widget>[
          IconButton(
            onPressed: null, 
            icon: Icon(
              Icons.favorite_border_rounded,
              color: Colors.black,
              weight: 0.5,
              size: 30.0,
              )
          ),
          IconButton(
            onPressed: null, 
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
              weight: 0.5,
              size: 30.0,
              )
          ),
        ],

      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Categories',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[],
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide()
                  ),
                  fillColor: Colors.grey,
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                  Icons.search_rounded,
                  ),
                ),
              ),
              //controller: TextEditingController(),
            )
          ],
        ),
      )
      );
  }
}