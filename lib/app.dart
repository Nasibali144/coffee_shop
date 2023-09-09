import 'package:coffee_shop/pages/intro_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const IntroPage(),
      // home: HomePage(),
    );
  }
}
