import 'package:e_comerce/app/products/ui/screens/dashboard/mobile/dashboard_mobile.dart';
import 'package:e_comerce/widgets/responsive_layout.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScafold: DashboardMobile(),
    );
  }
}
