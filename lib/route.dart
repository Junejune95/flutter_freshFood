import 'package:flutter/material.dart';
import 'package:freshFood/screens/cart/cart_screen.dart';
import 'package:freshFood/screens/home/home_screen.dart';
import 'package:freshFood/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  CartScreen.routeName: (context) => CartScreen(),
};