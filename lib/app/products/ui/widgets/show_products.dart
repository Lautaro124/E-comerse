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
    final ThemeData theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'More producs',
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.35,
            child: GridView.count(
              crossAxisCount: 2,
              children: const [
                ProductCard(),
                ProductCard(),
                ProductCard(),
                ProductCard(),
                ProductCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
