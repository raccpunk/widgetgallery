import 'package:flutter/material.dart';
import 'package:widgetgallery/routes/app_routes.dart';
import 'package:widgetgallery/widgets/bottom_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: const <Widget>[
            FlutterLogo(size: 300,),
            SizedBox(height: 5,),
            Text('Home Screen')
          ],
        ),
      ),
      bottomNavigationBar: BottomMenu(items : AppRoute.listSreens,),
    );
  }
}


