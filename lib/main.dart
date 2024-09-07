import 'package:first_flu_app/bloc_home_screen.dart';
import 'package:first_flu_app/getx_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: BlocHomeScreen(),
    );
  }
}
