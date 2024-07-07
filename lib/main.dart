import 'package:flutter/material.dart';
import 'package:todo_app_bet/screens/add_tasks_screen.dart';
import 'package:todo_app_bet/screens/tasks_screen.dart';
import 'package:todo_app_bet/widgets/custom_time.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3: true,
            textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(foregroundColor: Colors.blue)),
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
        home: const TasksScreen());
  }
}
