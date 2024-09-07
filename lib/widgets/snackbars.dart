import 'package:boilerplate/widgets/colors.dart';
import 'package:flutter/material.dart';

successSnackBar(BuildContext context, String? message,
    {SnackBarAction? action}) {
  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message ?? "",
          style: const TextStyle(color: CustomColors.success)),
      backgroundColor: CustomColors.success10,
      duration: const Duration(seconds: 2),
      action: action,
    ),
  );
}

errorSnackBar(BuildContext context, String? message, {SnackBarAction? action}) {
  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message ?? '',
          style: const TextStyle(color: CustomColors.danger)),
      backgroundColor: CustomColors.danger10,
      action: action,
    ),
  );
}

infoSnackBar(BuildContext context, String? message, {SnackBarAction? action}) {
  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message ?? '',
          style: const TextStyle(color: CustomColors.primary)),
      backgroundColor: CustomColors.primary300,
      action: action,
    ),
  );
}
