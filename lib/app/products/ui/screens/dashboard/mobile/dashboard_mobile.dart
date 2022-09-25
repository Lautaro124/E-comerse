import 'package:e_comerce/app/products/ui/widgets/show_products.dart';
import 'package:e_comerce/widgets/layout_generator.dart';
import 'package:flutter/material.dart';

class DashboardMobile extends StatefulWidget {
  const DashboardMobile({Key? key}) : super(key: key);

  @override
  State<DashboardMobile> createState() => _DashboardMobileState();
}

class _DashboardMobileState extends State<DashboardMobile> {
  @override
  Widget build(BuildContext context) {
    return LayoutGenerator(
      body: Container(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          width: double.infinity,
          height: double.infinity,
          child: const ShowPorducts()),
    );
  }
}
