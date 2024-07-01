import 'package:flutter/material.dart';
import 'package:maharaj_ohare/view/splash_view.dart';
import 'package:maharaj_ohare/view/web_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maharaj Ohare',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        "/": (context)=>SplashView(),
        "/webView": (context)=> const WebView(url: 'https://maharaj-ohare.com/wp-admin/edit.php?post_type=shop_order',)    },
      initialRoute: "/",
      // home: SplashView(),
    );
  }
}

