import 'package:flutter/material.dart';

class DescriptionProduct extends StatelessWidget {
  const DescriptionProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: theme.textTheme.titleLarge,
          ),
          Text(
            'Lorem ipsum dolo inmenso' * 29,
            style: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
