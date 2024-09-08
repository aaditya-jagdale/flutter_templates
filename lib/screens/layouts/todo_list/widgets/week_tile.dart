import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget weekTile(DateTime date, {bool isSelected = false, Function()? onTap}) {
  return Expanded(
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0XFF1C1B19),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Column(
          children: [
            Text(
              DateFormat('EEE').format(date),
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.grey,
                fontWeight: FontWeight.normal,
              ),
            ),
            Text(
              date.day.toString(),
              style: TextStyle(
                fontSize: 20,
                color: isSelected ? Colors.white : Colors.grey,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
