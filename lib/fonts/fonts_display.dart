import 'package:boilerplate/widgets/colors.dart';
import 'package:boilerplate/widgets/custom_textstyle.dart';
import 'package:boilerplate/widgets/spacing.dart';
import 'package:flutter/material.dart';

class FontsDisplayScreen extends StatefulWidget {
  const FontsDisplayScreen({super.key});

  @override
  State<FontsDisplayScreen> createState() => _FontsDisplayScreenState();
}

class _FontsDisplayScreenState extends State<FontsDisplayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: CustomColors.white),
        backgroundColor: CustomColors.black,
        title: const Text(
          'Fonts',
          style: CustomTextstyle.heading2,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Heading 1",
                style: CustomTextstyle.heading1Bold,
              ),
              Text(
                "Heading 1",
                style: CustomTextstyle.heading1,
              ),
              SizedBox(height: CustomSpacing.l),
              Text(
                "Heading 2",
                style: CustomTextstyle.heading2Bold,
              ),
              Text(
                "Heading 2",
                style: CustomTextstyle.heading2,
              ),
              SizedBox(height: CustomSpacing.l),
              Text(
                "Heading 3",
                style: CustomTextstyle.heading3Bold,
              ),
              Text(
                "Heading 3",
                style: CustomTextstyle.heading3,
              ),
              SizedBox(height: CustomSpacing.xl),
              Text(
                "Body 1",
                style: CustomTextstyle.body1Bold,
              ),
              Text(
                "Body 1",
                style: CustomTextstyle.body1,
              ),
              SizedBox(height: CustomSpacing.l),
              Text(
                "Body 2",
                style: CustomTextstyle.body2Bold,
              ),
              Text(
                "Body 2",
                style: CustomTextstyle.body2,
              ),
              SizedBox(height: CustomSpacing.l),
              Text(
                "Body 3",
                style: CustomTextstyle.body3Bold,
              ),
              Text(
                "Body 3",
                style: CustomTextstyle.body3,
              ),
              SizedBox(height: CustomSpacing.xl),
              Text(
                "Caption",
                style: CustomTextstyle.captionBold,
              ),
              Text(
                "Caption",
                style: CustomTextstyle.caption,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
