import 'package:boilerplate/widgets/colors.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  final String title;
  final int time;
  const TaskTile({
    super.key,
    required this.title,
    required this.time,
  });

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isSelected = false;

  RichText formatText(String text) {
    //if a word has @ in it that word sould be bold
    List<String> words = text.split(' ');
    List<TextSpan> textSpans = [];
    for (var word in words) {
      if (word.contains('@')) {
        textSpans.add(TextSpan(
          text: "$word ",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.white.withOpacity(0.3) : Colors.white,
            fontSize: 16,
            decoration:
                isSelected ? TextDecoration.lineThrough : TextDecoration.none,
            decorationColor: Colors.grey,
            decorationThickness: 2,
          ),
        ));
      } else {
        textSpans.add(TextSpan(
          text: "$word ",
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 16,
            color: isSelected ? Colors.white.withOpacity(0.3) : Colors.white,
            decoration:
                isSelected ? TextDecoration.lineThrough : TextDecoration.none,
            decorationColor: Colors.grey,
            decorationThickness: 2,
          ),
        ));
      }
    }

    return RichText(
      text: TextSpan(children: textSpans),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0XFF22211F),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: isSelected
                  ? const Icon(
                      Icons.check,
                      size: 16,
                      color: Colors.white,
                    )
                  : null,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: formatText(widget.title),
                ),
                const SizedBox(width: 6),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0XFF323031),
                  ),
                  child: Text(
                    "${widget.time} min",
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFBBBBBB),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
