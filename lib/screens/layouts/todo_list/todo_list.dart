//Original post: https://x.com/heyXdave/status/1832056299485581344/photo/1
//Original font used in image: SF Pro
//ideally I would like to create a custom model for each section ie morning, evening, night
//and then create a list of these models to be displayed in the list view

import 'package:boilerplate/screens/layouts/todo_list/widgets/custom_chip.dart';
import 'package:boilerplate/screens/layouts/todo_list/widgets/section_display.dart';
import 'package:boilerplate/screens/layouts/todo_list/widgets/week_tile.dart';
import 'package:boilerplate/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> sections = [
      {
        'title': 'Morning',
        'icon':
            """<svg width="100%" height="100%" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
 <path d="M22 16.5H2M20 20H4M12 3V5M4 13H2M6.31412 7.31412L4.8999 5.8999M17.6855 7.31412L19.0998 5.8999M22 13H20M7 13C7 10.2386 9.23858 8 12 8C14.7614 8 17 10.2386 17 13" stroke="grey" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
 </svg>""",
        'list': [
          {
            'title': '@coinbase: design user registration process',
            'time': 50,
          },
          {
            'title':
                '@apple: review and provide feedback on the wireframes for the new design concept',
            'time': 45,
          },
          {
            'title': '@shopify: mood board for the ecommerce template',
            'time': 30,
          },
        ],
      },
      {
        'title': 'Evening',
        'icon':
            """<svg width="100%" height="100%" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
 <path d="M12 2V4M12 20V22M4 12H2M6.31412 6.31412L4.8999 4.8999M17.6859 6.31412L19.1001 4.8999M6.31412 17.69L4.8999 19.1042M17.6859 17.69L19.1001 19.1042M22 12H20M17 12C17 14.7614 14.7614 17 12 17C9.23858 17 7 14.7614 7 12C7 9.23858 9.23858 7 12 7C14.7614 7 17 9.23858 17 12Z" stroke="grey" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
 </svg>""",
        'list': [
          {
            'title': '@apple: finalize color palette and typography',
            'time': 50,
          },
          {
            'title':
                '@insurance: analyze user feedback and suggest improvements',
            'time': 45,
          },
          {
            'title': '@shopify: evaluate two potential website layouts',
            'time': 30,
          },
        ],
      },
      {
        'title': 'Night',
        'icon':
            """<svg width="100%" height="100%" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
 <path d="M10.5 1.5V3.1M3.6 10H2M5.4512 4.95137L4.31982 3.82M15.5498 4.95137L16.6812 3.82M19 10H17.4M6.50007 10.0001C6.50007 7.79093 8.29093 6.00007 10.5001 6.00007C12.0061 6.00007 13.3177 6.83235 14.0001 8.06206M6 22C3.79086 22 2 20.2091 2 18C2 15.7909 3.79086 14 6 14C6.46419 14 6.90991 14.0791 7.32442 14.2245C8.04061 12.3396 9.86387 11 12 11C14.1361 11 15.9594 12.3396 16.6756 14.2245C17.0901 14.0791 17.5358 14 18 14C20.2091 14 22 15.7909 22 18C22 20.2091 20.2091 22 18 22C13.3597 22 9.87921 22 6 22Z" stroke="grey" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
 </svg>""",
        'list': [
          {
            'title': '@apple: finalize color palette and typography',
            'time': 50,
          },
          {
            'title':
                '@insurance: analyze user feedback and suggest improvements',
            'time': 45,
          },
          {
            'title': '@shopify: evaluate two potential website layouts',
            'time': 30,
          },
        ],
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0XFF1C1B19),
      appBar: AppBar(
        backgroundColor: const Color(0XFF1C1B19),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Text(
              _selectedDate.day == DateTime.now().day
                  ? "today"
                  : DateFormat('MMM dd').format(_selectedDate),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Spacer(),
            const CustomChip(
              child: Row(
                children: [
                  Icon(
                    Icons.check_circle,
                    color: CustomColors.black50,
                    size: 16,
                  ),
                  SizedBox(width: 5),
                  Text(
                    '24',
                    style: TextStyle(
                      fontSize: 12,
                      color: CustomColors.black50,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            const CustomChip(
              child: Row(
                children: [
                  Icon(
                    Icons.watch_later_rounded,
                    color: CustomColors.black50,
                    size: 16,
                  ),
                  SizedBox(width: 5),
                  Text(
                    '1.5 of 7.5 hrs',
                    style: TextStyle(
                      fontSize: 12,
                      color: CustomColors.black50,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 64,
              //a row of days of this week
              child: Row(
                children: [
                  ...List.generate(
                    7,
                    (index) {
                      DateTime date = DateTime.now()
                          .subtract(Duration(days: DateTime.now().weekday - 1))
                          .add(Duration(days: index));
                      bool isSelected = date.day == _selectedDate.day;
                      return weekTile(
                        date,
                        isSelected: isSelected,
                        onTap: () => setState(() {
                          _selectedDate = date;
                        }),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: sections.length,
                itemBuilder: (context, index) {
                  return SectionDisplay(
                    title: sections[index]['title'],
                    icon: SvgPicture.string(
                      sections[index]['icon'],
                      height: 14,
                    ),
                    tasks: sections[index]['list'],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
