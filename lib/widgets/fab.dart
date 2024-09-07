
import 'package:boilerplate/widgets/colors.dart';
import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: CustomColors.primary,
        shape: const CircleBorder(),
        onPressed: () => Navigator.pop(context),
        child: const Icon(
          Icons.close,
          color: CustomColors.white,
        ),
      );
  }
}