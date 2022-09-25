import 'package:e_comerce/app/products/ui/widgets/description_product.dart';
import 'package:e_comerce/app/products/ui/widgets/more_products.dart';
import 'package:e_comerce/app/products/ui/widgets/title_detail_product.dart';
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
    return LayoutGenerator(
      body: ListView(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Image.asset(ImagesPath.airphone.path),
          ),
          const TitleDetailProduct(),
          const DescriptionProduct(),
          const MoreProducts()
        ],
      ),
    );
  }
}
