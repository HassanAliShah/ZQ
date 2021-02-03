import 'package:flutter/material.dart';
import 'package:zq365/Register.dart';
import 'package:zq365/cart.dart';
import 'package:zq365/explore.dart';
import 'package:zq365/home_page.dart';
import 'package:zq365/login_page.dart';
import 'splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes: {
        Explore.id: (context) => Explore(),
        HomePage.id: (context) => HomePage(),
        Cart.id: (context) => Cart(),
        LoginPage.id: (context) => LoginPage(),
        Register.id: (context) => Register(),
        SplashScreen.id: (context) => SplashScreen(),
      },
    );
  }
}
