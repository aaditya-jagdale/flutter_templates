import 'package:boilerplate/widgets/colors.dart';
import 'package:boilerplate/widgets/textstyle.dart';
import 'package:boilerplate/widgets/transitions.dart';
import 'package:flutter/material.dart';

class HomeTile extends StatelessWidget {
  final String title;
  final String image;
  final Widget page;
  const HomeTile({
    super.key,
    required this.page,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => rightSlideTransition(context, page),
      child: Container(
        padding: const EdgeInsets.only(top: 20),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: CustomColors.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  title,
                  style: CustomTextStyle.heading2(),
                ),
              ),
              SizedBox(width: 150, child: Image.asset(image)),
            ],
          ),
        ),
      ),
    );
  }
}
