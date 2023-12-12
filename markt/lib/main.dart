import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:markt/nav_pages/cart.dart';
import 'package:markt/nav_pages/favorites.dart';
import 'package:markt/nav_pages/homepage.dart';
//Color.fromARGB(255, 233, 76, 36)

void main() {
  runApp(const MarktApp());
}

class MarktApp extends StatelessWidget {
  const MarktApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
/*       routeInformationProvider: goRouter.routeInformationProvider,
      routeInformationParser: goRouter.routeInformationParser, */
      title: 'The Markt App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:const Color.fromARGB(255, 0, 0, 0)),
        useMaterial3: true,
      ),
    );

    /* MaterialApp(
      title: 'The Markt App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:const Color.fromARGB(255, 0, 0, 0)),
        useMaterial3: true,
      ),
      //darkTheme: ThemeData.dark(),
      home: const HomePage(),
    ); */
  }

  static final goRouter = GoRouter(routes: [
      GoRoute(
        path: '/',
        builder: (context,state) => HomePage(),
        ),
        GoRoute(
        path: '/basket',
        builder: (context,state) => Cart(),
        ),
        GoRoute(
        path: '/favorites',
        builder: (context,state) => Favorites(),
        ),
    ],);
}
