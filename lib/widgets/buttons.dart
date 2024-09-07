import 'package:boilerplate/widgets/colors.dart';
import 'package:flutter/material.dart';

class GeneralButton extends StatefulWidget {
  final String title;
  final TextStyle textStyle;
  final Widget icon;
  final Widget trailingIcon;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;

  final void Function()? onPressed;
  const GeneralButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
    this.textStyle = const TextStyle(
      fontSize: 18,
      color: CustomColors.white,
      fontWeight: FontWeight.normal,
    ),
    this.icon = const SizedBox(),
    this.trailingIcon = const SizedBox(),
  });

  @override
  State<GeneralButton> createState() => _GeneralButtonState();
}

class _GeneralButtonState extends State<GeneralButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          backgroundColor: CustomColors.black,
          shadowColor: CustomColors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        onPressed: widget.onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment:
              widget.mainAxisAlignment ?? MainAxisAlignment.start,
          crossAxisAlignment:
              widget.crossAxisAlignment ?? CrossAxisAlignment.center,
          children: [
            if (widget.icon != const SizedBox())
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: widget.icon,
              ),
            Text(
              widget.title,
              style: widget.textStyle,
            ),
            if (widget.trailingIcon != const SizedBox()) const Spacer(),
            if (widget.trailingIcon != const SizedBox()) widget.trailingIcon,
          ],
        ),
      ),
    );
  }
}

class GhostButton extends StatefulWidget {
  final String title;
  final TextStyle textStyle;
  final Widget icon;
  final Widget trailingIcon;
  final TextAlign? textAlign;
  final void Function()? onPressed;
  const GhostButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.textAlign,
    this.textStyle = const TextStyle(
      fontSize: 18,
      color: CustomColors.black,
      fontWeight: FontWeight.normal,
    ),
    this.icon = const SizedBox(),
    this.trailingIcon = const SizedBox(),
  });

  @override
  State<GhostButton> createState() => _GhostButtonState();
}

class _GhostButtonState extends State<GhostButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          backgroundColor: CustomColors.white,
          shadowColor: CustomColors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
            side: const BorderSide(color: CustomColors.black),
          ),
        ),
        onPressed: widget.onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (widget.icon != const SizedBox())
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: widget.icon,
              ),
            Text(
              widget.title,
              textAlign: widget.textAlign,
              style: widget.textStyle,
            ),
            const Spacer(),
            widget.trailingIcon,
          ],
        ),
      ),
    );
  }
}
