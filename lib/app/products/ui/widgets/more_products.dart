import 'package:e_comerce/app/products/resources/constants/detail_utils.dart';
import 'package:e_comerce/app/products/resources/products_texts.dart';
import 'package:e_comerce/app/products/ui/widgets/show_products.dart';
import 'package:flutter/material.dart';

class MoreProducts extends StatelessWidget {
  const MoreProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: detailMarginWidgets,
      padding: detailPadding,
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            morePorducts,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          ShowPorducts(
            height: MediaQuery.of(context).size.height * 0.45,
            listProductHeigth: MediaQuery.of(context).size.height * 0.39,
          ),
        ],
      ),
    );
  }
}
