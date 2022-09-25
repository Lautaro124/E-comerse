import 'package:e_comerce/resources/enums/navigation.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  for (var route in NavigationScreens.values)
    route.name: (BuildContext context) => route.screen
};
