import 'package:e_comerce/app/products/resources/products_texts.dart';
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
    final ThemeData theme = Theme.of(context);
    return Card(
      color: theme.cardColor,
      child: Container(
        padding: const EdgeInsets.only(top: 20),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              alignment: const Alignment(0.9, -0.95),
              children: [
                AspectRatio(
                  aspectRatio: 1.5,
                  child: Image.asset(ImagesPath.airphone.path),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: theme.elevatedButtonTheme.style,
                  child: const Icon(
                    Icons.add_shopping_cart,
                    semanticLabel: addCart,
                  ),
                ),
              ],
            ),
            Text(
              'Samsung burds 2',
              maxLines: 2,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleMedium,
            ),
            Text(
              '200\$',
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
