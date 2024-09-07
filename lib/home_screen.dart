import 'package:boilerplate/screens/animations/animations_display.dart';
import 'package:boilerplate/screens/buttons/buttons_display.dart';
import 'package:boilerplate/screens/transition/transition_display.dart';
import 'package:boilerplate/widgets/home_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Flutter Template package"),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            HomeTile(
              title: "Buttons",
              image: "assets/images/buttons_bg.png",
              page: Buttons(),
            ),
            HomeTile(
              title: "Transitions",
              image: "assets/images/transitions.png",
              page: TransitionDisplayScreen(),
            ),
            HomeTile(
              title: "Animations",
              image: "assets/images/animations.png",
              page: AnimationsDisplay(),
            ),
          ],
        ),
      ),
    );
  }
}
