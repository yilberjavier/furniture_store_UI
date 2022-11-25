import 'package:flutter/material.dart';
import 'package:furniture_store_ui_07/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture Store',
      home: HomePage()
    );
  }
}
