import 'package:boilerplate/widgets/colors.dart';
import 'package:boilerplate/widgets/transitions.dart';
import 'package:flutter/material.dart';

class LayoutCard extends StatelessWidget {
  final Widget page;
  final String image;
  final String title;
  const LayoutCard({
    super.key,
    required this.page,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => rightSlideTransition(context, page),
      child: Container(
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: CustomColors.white,
          boxShadow: [
            BoxShadow(
              color: CustomColors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: CustomColors.black.withOpacity(0.1),
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(12)),
                image: DecorationImage(
                  image: NetworkImage(
                    image,
                  ),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.black,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward,
                    color: CustomColors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
