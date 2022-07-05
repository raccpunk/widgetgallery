import 'package:flutter/cupertino.dart';
import '../models/Item_menu.dart';


class ButtonMenu extends StatelessWidget {
  final MenuOption option;
  const ButtonMenu({Key? key, required this.option}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      child: CupertinoButton(
        onPressed: () => Navigator.pushReplacementNamed(context, option.route),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(option.icon, color: CupertinoColors.white,),
            const SizedBox(height: 5,),
            Text(option.title,
              style: const TextStyle(color: CupertinoColors.white, fontSize: 12),
            )
          ]),
      ),
    );
  }  
}