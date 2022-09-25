import 'package:e_comerce/app/products/resources/products_texts.dart';
import 'package:e_comerce/resources/enums/images_path.dart';
import 'package:flutter/material.dart';

class LineCard extends StatefulWidget {
  const LineCard({Key? key}) : super(key: key);

  @override
  State<LineCard> createState() => _LineCardState();
}

class _LineCardState extends State<LineCard> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Card(
      color: theme.cardColor,
      child: SizedBox(
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(ImagesPath.airphone.path),
            ),
            Expanded(
              flex: 3,
              child: Container(
                margin: const EdgeInsets.only(left: 20),
                height: 70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
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
            ),
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: ElevatedButton(
                onPressed: () {},
                style: theme.elevatedButtonTheme.style,
                child: const Icon(
                  Icons.add_shopping_cart,
                  semanticLabel: addCart,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
