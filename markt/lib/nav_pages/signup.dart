import 'package:flutter/material.dart';
/* import 'package:markt/models/buyermodel.dart';
import 'package:markt/models/sellermodel.dart'; */

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  String usertype = "buyer";

  directToBasicInfo(){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (BuildContext context)=> BasicInfo())
      );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Text(
              "Sign up",
              softWrap: false,
              style: TextStyle(
                color: Color.fromRGBO(60, 60, 60, 1),
                fontSize: 30.0
              ),
            ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                  borderSide: BorderSide()
                ),
                helperText: 'Username/Shopname',
                hintText: 'Username/Shopname',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                  borderSide: BorderSide()
                ),
                helperText: 'Password',
                hintText: 'Password',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                  borderSide: BorderSide()
                ),
                helperText: 'Re-enter Password',
                hintText: 'Re-enter Password',
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: ElevatedButton(
                  onPressed: null,
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 233, 76, 36)),
                  ),
                  child: Text(
                    "Continue",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white
                    ),
                  )
                )
              )
            )
          ],
        ),
      ) 
    );
  }
}

class BasicInfo extends StatefulWidget {
  const BasicInfo({super.key,user});

  @override
  State<BasicInfo> createState() => _BasicInfoState();
}

class _BasicInfoState extends State<BasicInfo> {

  late dynamic user;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text('Hola')
        ],
        ),
    );
  }
}