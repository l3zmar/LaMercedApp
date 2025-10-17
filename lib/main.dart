import 'package:flutter/material.dart';
import 'package:hotel_real_merced/pages/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
      title: 'Hotel Real Merced app',
      debugShowCheckedModeBanner: false,
    );
  }
}
