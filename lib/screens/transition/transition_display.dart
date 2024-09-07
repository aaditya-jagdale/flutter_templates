import 'package:boilerplate/screens/transition/transition_page2.dart';
import 'package:boilerplate/widgets/buttons.dart';
import 'package:boilerplate/widgets/colors.dart';
import 'package:boilerplate/widgets/custom_textstyle.dart';
import 'package:boilerplate/widgets/transitions.dart';
import 'package:flutter/material.dart';

class TransitionDisplayScreen extends StatefulWidget {
  const TransitionDisplayScreen({super.key});

  @override
  State<TransitionDisplayScreen> createState() =>
      _TransitionDisplayScreenState();
}

class _TransitionDisplayScreenState extends State<TransitionDisplayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: CustomColors.white,
        title: const Text(
          'Transitions',
          style: CustomTextstyle.heading2,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              GeneralButton(
                  title: "Slide right",
                  trailingIcon: const Icon(
                    Icons.keyboard_arrow_right_rounded,
                    color: CustomColors.white,
                    size: 24,
                  ),
                  onPressed: () {
                    rightSlideTransition(context, const TransitionPage2());
                  }),
              GeneralButton(
                  title: "Slide left",
                  trailingIcon: const Icon(
                    Icons.keyboard_arrow_left_rounded,
                    color: CustomColors.white,
                    size: 24,
                  ),
                  onPressed: () {
                    leftSlideTransition(context, const TransitionPage2());
                  }),
              GeneralButton(
                  title: "Slide Up",
                  trailingIcon: const Icon(
                    Icons.keyboard_arrow_up_rounded,
                    color: CustomColors.white,
                    size: 24,
                  ),
                  onPressed: () {
                    upSlideTransition(context, const TransitionPage2());
                  }),
              GeneralButton(
                  title: "Slide Down",
                  trailingIcon: const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: CustomColors.white,
                    size: 24,
                  ),
                  onPressed: () {
                    downSlideTransition(context, const TransitionPage2());
                  }),
              GeneralButton(
                  title: "Scale Transition",
                  trailingIcon: const Icon(
                    Icons.fullscreen_rounded,
                    color: CustomColors.white,
                    size: 24,
                  ),
                  onPressed: () {
                    scaleUpTransition(context, const TransitionPage2());
                  }),
              GeneralButton(
                  title: "Fade Transition",
                  trailingIcon: const Icon(
                    Icons.arrow_forward_rounded,
                    color: CustomColors.white,
                    size: 24,
                  ),
                  onPressed: () {
                    fadeTransition(context, const TransitionPage2());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
