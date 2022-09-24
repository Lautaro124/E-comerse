import 'package:e_comerce/resources/enums/images_path.dart';
import 'package:e_comerce/widgets/layout_generator.dart';
import 'package:flutter/material.dart';

class DetailMobile extends StatefulWidget {
  const DetailMobile({Key? key}) : super(key: key);

  @override
  State<DetailMobile> createState() => _DetailMobileState();
}

class _DetailMobileState extends State<DetailMobile> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return LayoutGenerator(
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Image.asset(ImagesPath.airphone.path),
          ),
          Container(
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
          ),
          Container(
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
          ),
        ],
      ),
    );
  }
}
