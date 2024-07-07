import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:todo_app_bet/screens/add_tasks_screen.dart';
import 'package:todo_app_bet/theme/app_theme.dart';
import 'package:todo_app_bet/widgets/custom_card_widget.dart';
import 'package:todo_app_bet/widgets/todos.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: ClipOval(
                child: Image.asset('assets/images/image.png',
                    width: 60, height: 60, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Today",
                  style: AppThemes.titleTextStyle,
                ),
                //Will hide completed tasks
                TextButton(
                    onPressed: () {}, child: const Text("Hide completed"))
              ],
            ),
            ...List.generate(
              todos.length,
              (index) => CustomCardWidget(title: todos[index]),
            ),
            // todos.isEmpty
            const Text(
              'Tomorrow',
              style: AppThemes.titleTextStyle,
            ),
            ...List.generate(
              todos.length,
              (index) => CustomCardWidget(title: todos[index]),
            ),
          ],
        ),
      ),
      floatingActionButton: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddTasksScreen(),
                ));
          },
          icon: const Icon(
            CupertinoIcons.add_circled,
            size: 38,
            color: Colors.black,
          )),
    );
  }
}
