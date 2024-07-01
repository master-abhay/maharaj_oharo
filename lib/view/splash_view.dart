import 'package:flutter/material.dart';
import 'package:maharaj_ohare/view/web_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context,"/webView");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Image.asset(
        "assets/logo.png",
        height: 200,
        width: 200,
      ),
    ));
  }
}
