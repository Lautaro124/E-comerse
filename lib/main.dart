import 'package:e_comerce/app/products/ui/screens/detail/detail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-comerce',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Detail(),
    );
  }
}
