import 'package:flutter/material.dart';

import '../routes/app_routes.dart';
import '../widgets/bottom_menu.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
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
            Text('Login Screen ....')
          ],
        ),
      ),      
      bottomNavigationBar: BottomMenu(items : AppRoute.listSreens,),
    );
  }
}

