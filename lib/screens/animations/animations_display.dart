import 'package:boilerplate/screens/animations/bouncing.dart';
import 'package:boilerplate/screens/animations/dots.dart';
import 'package:boilerplate/screens/animations/gradients.dart';
import 'package:boilerplate/screens/animations/overlay.dart';
import 'package:boilerplate/screens/animations/person_grid.dart';
import 'package:boilerplate/screens/animations/progress_animation.dart';
import 'package:boilerplate/widgets/buttons.dart';
import 'package:boilerplate/widgets/colors.dart';
import 'package:boilerplate/widgets/custom_textstyle.dart';
import 'package:boilerplate/widgets/transitions.dart';
import 'package:flutter/material.dart';

class AnimationsDisplay extends StatefulWidget {
  const AnimationsDisplay({super.key});

  @override
  State<AnimationsDisplay> createState() => _AnimationsDisplayState();
}

class _AnimationsDisplayState extends State<AnimationsDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: CustomColors.white,
        title: const Text(
          'Animations',
          style: CustomTextstyle.heading2,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            GeneralButton(
              title: "Bouncing animation",
              trailingIcon: const Icon(
                Icons.arrow_forward,
                color: CustomColors.white,
              ),
              onPressed: () =>
                  rightSlideTransition(context, const BouncingAnimation()),
            ),
            GeneralButton(
              title: "Overlay animation",
              trailingIcon: const Icon(
                Icons.arrow_forward,
                color: CustomColors.white,
              ),
              onPressed: () =>
                  rightSlideTransition(context, const OverLayAnimation()),
            ),
            GeneralButton(
              title: "Dots animation",
              trailingIcon: const Icon(
                Icons.arrow_forward,
                color: CustomColors.white,
              ),
              onPressed: () =>
                  rightSlideTransition(context, const DotsLoading()),
            ),
            GeneralButton(
              title: "Gradient animation",
              trailingIcon: const Icon(
                Icons.arrow_forward,
                color: CustomColors.white,
              ),
              onPressed: () =>
                  rightSlideTransition(context, const GradientDisplay()),
            ),
            GeneralButton(
              title: "Person grid animation",
              trailingIcon: const Icon(
                Icons.arrow_forward,
                color: CustomColors.white,
              ),
              onPressed: () =>
                  rightSlideTransition(context, const PersonGrid()),
            ),
            GeneralButton(
              title: "Progress animation",
              trailingIcon: const Icon(
                Icons.arrow_forward,
                color: CustomColors.white,
              ),
              onPressed: () =>
                  rightSlideTransition(context, const ProgressAnimation()),
            ),
          ],
        ),
      ),
    );
  }
}
