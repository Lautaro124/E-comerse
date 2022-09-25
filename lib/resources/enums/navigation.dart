import 'package:e_comerce/app/products/ui/screens/dashboard/dashboard.dart';
import 'package:e_comerce/app/products/ui/screens/detail/detail.dart';
import 'package:flutter/material.dart';

enum NavigationScreens {
  dashboard(Dashboard()),
  detail(Detail());

  const NavigationScreens(this.screen);
  final Widget screen;
}
