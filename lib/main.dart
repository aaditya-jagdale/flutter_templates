import 'package:boilerplate/home_screen.dart';
import 'package:boilerplate/widgets/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Boiler Plate',
      theme: ThemeData(
        scaffoldBackgroundColor: CustomColors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: CustomColors.primary),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
