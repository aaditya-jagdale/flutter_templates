import 'dart:async';
import 'dart:math';

import 'package:boilerplate/widgets/fab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ProgressAnimation extends StatefulWidget {
  const ProgressAnimation({super.key});

  @override
  State<ProgressAnimation> createState() => _ProgressAnimationState();
}

class _ProgressAnimationState extends State<ProgressAnimation> {
  int animationDuration = 400;
  double scaleVar = 0;
  bool toggle = true;
  bool toggle2 = false;

  //Timer
  Timer? _timer;
  final Random _random = Random();
  int _randomValue = 0;

  void startTimer() {
    const duration = Duration(milliseconds: 50);
    _timer = Timer.periodic(duration, (Timer timer) {
      setState(() {
        if (scaleVar >= 300) {
          _timer?.cancel();
          setState(() {
            toggle2 = true;
          });
        } else {
          _randomValue = _random.nextInt(200);
          if (_randomValue % 2 == 0) {
            scaleVar += 5;
          }
        }
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const CustomFloatingActionButton(),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            GestureDetector(
              onTap: () => setState(() {
                toggle = false;
                _timer?.cancel();

                startTimer();
              }),
              child: Text(
                toggle
                    ? 'Start Animation'
                    : '${min(100, (scaleVar / 3)).toString().split('.').first}% done',
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
                .animate(
                  target: toggle ? 0 : 1,
                )
                .moveY(
                  begin: 0,
                  end: 250,
                ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 450),
              curve: Curves.easeOutBack,
              height: scaleVar,
              width: scaleVar,
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
            )
                .animate(
                  target: scaleVar >= 300 ? 1 : 0,
                )
                .scaleXY(
                  begin: 1,
                  end: 5,
                ),
          ],
        ),
      ),
    );
  }
}
