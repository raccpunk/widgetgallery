
import 'package:flutter/material.dart';
import 'package:widgetgallery/routes/app_routes.dart';
import 'package:widgetgallery/widgets/button_menu.dart';
import '../models/Item_menu.dart';

class BottomMenu extends StatelessWidget {
  final List<MenuOption> items;
  const BottomMenu({Key? key, required this.items}) : super(key: key);
  
  List<ButtonMenu> _getOptions(List<MenuOption> items) => AppRoute.listSreens.map((option) => ButtonMenu(option: option)).toList();

  @override
  Widget build(Object context) {
    return SafeArea(child: Container(
      padding: const EdgeInsets.all(5),
      child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
        children: _getOptions(items)),
    ));
  }
}