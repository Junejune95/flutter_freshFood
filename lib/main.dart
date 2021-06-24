import 'package:flutter/material.dart';
import 'package:freshFood/route.dart';
import 'package:freshFood/screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fresh food',
      theme: ThemeData(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
