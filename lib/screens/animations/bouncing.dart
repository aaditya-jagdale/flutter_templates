import 'package:boilerplate/widgets/colors.dart';
import 'package:boilerplate/widgets/fab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class BouncingAnimation extends StatefulWidget {
  const BouncingAnimation({super.key});

  @override
  State<BouncingAnimation> createState() => _BouncingAnimationState();
}

class _BouncingAnimationState extends State<BouncingAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const CustomFloatingActionButton(),
      body: Center(
        child: Animate(
          onComplete: (controller) {
            controller.repeat(reverse: true);
          },
          autoPlay: true,
          effects: const [
            MoveEffect(
              begin: Offset(0, 0),
              end: Offset(0, 100),
              duration: Duration(milliseconds: 700),
              transformHitTests: true,
              curve: Curves.easeInQuart,
            ),
          ],
          child: Container(
            height: 32,
            width: 32,
            decoration: const BoxDecoration(
              color: CustomColors.primary,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
