import 'package:boilerplate/widgets/buttons.dart';
import 'package:boilerplate/widgets/colors.dart';
import 'package:boilerplate/widgets/custom_textstyle.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: CustomColors.white,
        title: const Text(
          'Buttons',
          style: CustomTextstyle.heading2,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            GeneralButton(title: "General Button", onPressed: () {}),
            GhostButton(title: "Ghost Button", onPressed: () {}),

            //centered button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                  backgroundColor: CustomColors.white,
                  shadowColor: CustomColors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                    side: const BorderSide(color: CustomColors.black),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Centered Button",
                  style: TextStyle(
                    fontSize: 18,
                    color: CustomColors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),

            //trailing icon button
            GeneralButton(
              title: "Trailing Icon Button",
              trailingIcon: const Icon(
                Icons.keyboard_arrow_right_rounded,
                color: CustomColors.white,
              ),
              onPressed: () {},
            ),

            //leading icon button
            GeneralButton(
              title: "Leading Icon Button",
              icon: const Icon(
                Icons.info,
                color: CustomColors.white,
              ),
              onPressed: () {},
            ),
          
            
          ],
        ),
      ),
    );
  }
}
