import 'package:flutter/material.dart';

class TitleDetailProduct extends StatefulWidget {
  const TitleDetailProduct({Key? key}) : super(key: key);

  @override
  State<TitleDetailProduct> createState() => _TitleDetailProductState();
}

class _TitleDetailProductState extends State<TitleDetailProduct> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Samsung burds 2',
                maxLines: 2,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleLarge,
              ),
              Text(
                '200\$',
                style: theme.textTheme.bodyLarge,
              )
            ],
          ),
          ElevatedButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
            ),
            icon: const Icon(Icons.monetization_on),
            label: const Text(
              'Buy',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
