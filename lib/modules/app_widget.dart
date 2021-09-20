import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/create_split_page.dart';
import 'package:split_it/modules/error/error_page.dart';
import 'package:split_it/modules/home/home_page.dart';
import 'package:split_it/modules/login/login_page.dart';
import 'package:split_it/modules/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Split.it',
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/error": (context) => ErrorPage(),
        "/create_split": (context) => CreateSplitPage(),
      },
    );
  }
}