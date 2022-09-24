import 'package:e_comerce/resources/enums/images_path.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        AspectRatio(
          aspectRatio: 1.3,
          child: Image.asset(ImagesPath.airphone.path),
        ),
        const Text('Burds'),
        const Text('200\$')
      ],
    ));
  }
}
