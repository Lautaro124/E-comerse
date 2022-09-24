import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScafold;
  final Widget? tabletScafold, desktopScafold;
  const ResponsiveLayout({
    Key? key,
    required this.mobileScafold,
    this.tabletScafold,
    this.desktopScafold,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return mobileScafold;
        }

        if (constraints.maxWidth < 1100) {
          return tabletScafold ?? mobileScafold;
        }

        return desktopScafold ?? mobileScafold;
      },
    );
  }
}
