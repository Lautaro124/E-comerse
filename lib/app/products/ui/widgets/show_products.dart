import 'package:e_comerce/app/products/ui/widgets/card.dart';
import 'package:flutter/material.dart';

class ShowPorducts extends StatefulWidget {
  const ShowPorducts({Key? key}) : super(key: key);

  @override
  State<ShowPorducts> createState() => _ShowPorductsState();
}

class _ShowPorductsState extends State<ShowPorducts> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: const [
        ProductCard(),
        ProductCard(),
        ProductCard(),
        ProductCard(),
        ProductCard(),
      ],
    );
  }
}
