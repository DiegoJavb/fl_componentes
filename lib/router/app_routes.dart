import 'package:flutter/material.dart';

import 'package:fl_componentes/screens/screens.dart';
import 'package:fl_componentes/models/models.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    //borrar home
    // MenuOption(
    //   route: 'home',
    //   icon: Icons.home,
    //   name: 'Home',
    //   screen: const HomeScreen(),
    // ),
    MenuOption(
      route: 'listview1',
      icon: Icons.home,
      name: 'List View 1',
      screen: const Listview1Screen(),
    ),
    MenuOption(
      route: 'listview2',
      icon: Icons.home_max,
      name: 'List View 2',
      screen: const Listview2Screen(),
    ),
    MenuOption(
      route: 'card',
      icon: Icons.card_giftcard,
      name: 'Card',
      screen: const CardScreen(),
    ),
    MenuOption(
      route: 'alert',
      icon: Icons.align_vertical_bottom,
      name: 'Alert',
      screen: const AlertScreen(),
    ),
    MenuOption(
      route: 'avatar',
      icon: Icons.person,
      name: 'Avatar',
      screen: const AvatarScreen(),
    ),
    MenuOption(
      route: 'animated',
      icon: Icons.brightness_1_outlined,
      name: 'Animated Container',
      screen: const AnimatedScreen(),
    ),
    MenuOption(
      route: 'input',
      icon: Icons.format_align_center,
      name: 'Inputs',
      screen: const InputScreen(),
    ),
    MenuOption(
      route: 'slider',
      icon: Icons.slideshow,
      name: 'Slider and Checks',
      screen: const SliderScreen(),
    )
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext constext) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'alert': (BuildContext context) => const AlertScreen()
  // };
  static Route<dynamic> onGenerateRoute(settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
