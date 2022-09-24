import 'package:flutter/material.dart';

class LayoutGenerator extends StatelessWidget {
  final Widget body;
  const LayoutGenerator({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: body),
    );
  }
}
