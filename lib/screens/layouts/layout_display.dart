import 'package:boilerplate/screens/layouts/card1/card_1.dart';
import 'package:boilerplate/screens/layouts/todo_list/todo_list.dart';
import 'package:boilerplate/screens/layouts/widget/card.dart';
import 'package:boilerplate/widgets/colors.dart';
import 'package:boilerplate/widgets/custom_textstyle.dart';

import 'package:flutter/material.dart';

class LayoutDisplay extends StatefulWidget {
  const LayoutDisplay({super.key});

  @override
  State<LayoutDisplay> createState() => _LayoutDisplayState();
}

class _LayoutDisplayState extends State<LayoutDisplay> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> layouts = [
      {
        'page': const Card1(),
        'image':
            'https://pbs.twimg.com/media/GWugfXOWwAUvjCM?format=jpg&name=4096x4096',
        'title': 'Card 1',
      },
      {
        'page': const TodoList(),
        'image':
            'https://pbs.twimg.com/media/GWzFfAEXsAE9bqf?format=jpg&name=4096x4096',
        'title': 'Todo list',
      },
    ];
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: CustomColors.white,
        title: const Text(
          'Buttons',
          style: CustomTextstyle.heading2,
        ),
      ),
      body: ListView.builder(
        itemCount: layouts.length,
        itemBuilder: (context, index) {
          return LayoutCard(
            page: layouts[index]['page'],
            image: layouts[index]['image'],
            video: layouts[index]['video'],
            title: layouts[index]['title'],
          );
        },
      ),
    );
  }
}
