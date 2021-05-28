import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // Define an async function to initialize FlutterFire
  void initializeFirebase() async {
    try {
      // Wait for Firebase to initialize
      await Firebase.initializeApp();
      await Future.delayed(Duration(seconds: 2));
      Navigator.pushReplacementNamed(context, "/login");
    } catch (e) {
      Navigator.pushNamed(context, "/error");
    }
  }

  @override
  void initState() {
    initializeFirebase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppTheme.gradients.background),
        child: SafeArea(
          top: true,
          bottom: true,
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/retangulo-dir.png",
                    width: 198,
                    height: 98,
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/retangulo-esq.png",
                    width: 114,
                    height: 54,
                  )
                ],
              ),
              Image.asset(
                "assets/images/logo.png",
                width: 128,
                height: 112,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/images/retangulo-esq.png",
                    width: 198,
                    height: 98,
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/retangulo-esq.png",
                    width: 114,
                    height: 54,
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/images/retangulo-dir.png",
                    width: 198,
                    height: 98,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
