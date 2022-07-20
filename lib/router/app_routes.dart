import 'package:flutter/material.dart';

import '../models/menu_option.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home),
    MenuOption(
        route: 'listview1',
        name: 'List View Screen',
        screen: const Listview1Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'listview2',
        name: 'List View Screen 2',
        screen: const Listview2Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'alert',
        name: 'Alert View Screen 2',
        screen: const AlertScreen(),
        icon: Icons.alarm),
    MenuOption(
        route: 'card',
        name: 'Card View Screen 2',
        screen: const CardScreen(),
        icon: Icons.credit_card),
  ];

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listView1': (BuildContext context) => const Listview1Screen(),
  //   'listView2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
