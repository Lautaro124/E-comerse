import 'package:e_comerce/app/products/ui/screens/detail/mobile/detail_mobile.dart';
import 'package:e_comerce/widgets/responsive_layout.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScafold: DetailMobile(),
    );
  }
}
