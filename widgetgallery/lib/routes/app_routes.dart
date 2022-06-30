import 'package:flutter/material.dart';
import 'package:widgetgallery/models/Item_menu.dart';
import 'package:widgetgallery/screens/home_screen.dart';

class AppRoute{
  static const String root = '/';
  static final List<MenuOption> listSreens =[
    MenuOption(title: 'House', route: '/', screen: const HomeScreen(), icon: Icons.house_outlined),
    MenuOption(title: 'Orders', route: '/orders', screen: const HomeScreen(), icon: Icons.list_outlined),
    MenuOption(title: 'Login', route: '/login', screen: const HomeScreen(), icon: Icons.login_outlined),
    MenuOption(title: 'Profile', route: '/profile', screen: const HomeScreen(), icon: Icons.person_outlined),
    MenuOption(title: 'Sing Up', route: '/singup', screen: const HomeScreen(), icon: Icons.account_circle_outlined)
  ];

  static Map<String, Widget Function(BuildContext)> getRoutes() {
    Map<String, Widget Function(BuildContext)> routes = {};
    for (MenuOption item in listSreens) {
      routes[item.route]=(context)=> item.screen;
    }
    return routes;
  }

}