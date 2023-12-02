import 'package:flutter/material.dart';
import 'package:markt/nav_pages/homepage.dart';
//Color.fromARGB(255, 233, 76, 36)

void main() {
  runApp(const MarktApp());
}

class MarktApp extends StatelessWidget {
  const MarktApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Markt App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:Color.fromARGB(255, 0, 0, 0)),
        useMaterial3: true,
      ),
      //darkTheme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
