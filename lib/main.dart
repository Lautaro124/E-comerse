import 'package:e_comerce/resources/utils/routes.dart';
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
      initialRoute: routes.keys.first,
      routes: routes,
    );
  }
}
