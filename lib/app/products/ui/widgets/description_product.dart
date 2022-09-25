import 'package:e_comerce/app/products/resources/constants/detail_utils.dart';
import 'package:e_comerce/app/products/resources/products_texts.dart';
import 'package:flutter/material.dart';

class DescriptionProduct extends StatelessWidget {
  const DescriptionProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Container(
      margin: detailMarginWidgets,
      padding: detailPadding,
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            description,
            style: theme.textTheme.titleLarge,
          ),
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry' *
                10,
            style: theme.textTheme.bodyMedium,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
