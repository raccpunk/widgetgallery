import 'package:flutter/material.dart';

import '../models/country.dart';
import '../routes/app_routes.dart';
import '../widgets/bottom_menu.dart';
import '../widgets/input_form.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({Key? key}) : super(key: key);
  List<Country> _getCountries() => <Country>[
        const Country(name: 'United States', code: 'US'),
        const Country(name: 'Canada', code: 'CA'),
        const Country(name: 'United Kingdom', code: 'UK'),
        const Country(name: 'Australia', code: 'AU'),
        const Country(name: 'Germany', code: 'DE'),
        const Country(name: 'France', code: 'FR'),
        const Country(name: 'Italy', code: 'IT'),
        const Country(name: 'Spain', code: 'ES'),
        const Country(name: 'Brazil', code: 'BR'),
        const Country(name: 'Argentina', code: 'AR'),
        const Country(name: 'Mexico', code: 'MX'),
        const Country(name: 'India', code: 'IN'),
        const Country(name: 'China', code: 'CN'),
        const Country(name: 'Japan', code: 'JP'),
        const Country(name: 'Korea', code: 'KR'),
        const Country(name: 'Taiwan', code: 'TW'),
        const Country(name: 'Russia', code: 'RU'),
        const Country(name: 'Netherlands', code: 'NL'),
        const Country(name: 'Select a country', code: 'none'),
      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(title: const Text('Widget Gallery')),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: <Widget>[
              InputForm(
                labelText: 'Last Name',
                hintText: 'Enter your last name',
                icon: Icons.abc,
                isRequired: true,
                keyboardType: TextInputType.emailAddress,
              ),
              InputForm(
                labelText: '“Phone”',
                hintText: 'Enter your phonw number',
                icon: Icons.phone,
                isRequired: true,
                keyboardType: TextInputType.phone,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomMenu(
        items: AppRoute.listSreens,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          const snackBar = SnackBar(
            content: const Text('You have successfully signed up!!!'),
            backgroundColor: Colors.green,
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Icon(Icons.save),
      ),
    );
  }
}
