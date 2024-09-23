import 'package:flutter/material.dart';
import 'package:amazon_clone/view/auth/authScreen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(builder: (_) => const AuthScreen());

    default:
      return MaterialPageRoute(builder: (_) => const Scaffold(
        body: Center(child: Text('PAGE DOES NOT EXIST'),)
      ));
  }
}
