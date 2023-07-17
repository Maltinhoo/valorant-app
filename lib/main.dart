import 'package:flutter/material.dart';
import 'package:valorant_app/core/inject/inject.dart';
import 'package:valorant_app/modules/main/presenter/main_page.dart';

void main() {
  Locator.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Valorant App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}
