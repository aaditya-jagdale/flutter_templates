import 'package:boilerplate/screens/layouts/todo_list/widgets/task_tile.dart';
import 'package:flutter/material.dart';

class SectionDisplay extends StatelessWidget {
  final String title;
  final Widget icon;
  final List<Map<String, dynamic>> tasks;
  const SectionDisplay({
    super.key,
    required this.title,
    required this.icon,
    this.tasks = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        children: [
          Row(
            children: [
              icon,
              const SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ...List.generate(
            tasks.length,
            (index) => TaskTile(
              title: tasks[index]['title'],
              time: tasks[index]['time'],
            ),
          ),
        ],
      ),
    );
  }
}
