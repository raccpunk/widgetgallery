import 'package:flutter/material.dart';

import '../routes/app_routes.dart';
import '../widgets/bottom_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: const Text('Widget Gallery')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            FlutterLogo(size: 300,),
            SizedBox(height: 5,),
            Text('Profile Screen ....')
          ],
        ),
      ),      
      bottomNavigationBar: BottomMenu(items : AppRoute.listSreens,),
    );
  }
}

