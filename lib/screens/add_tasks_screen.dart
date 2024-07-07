import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app_bet/theme/app_theme.dart';
import 'package:todo_app_bet/widgets/custom_time.dart';

class AddTasksScreen extends StatefulWidget {
  const AddTasksScreen({super.key});

  @override
  State<AddTasksScreen> createState() => _AddTasksScreenState();
}

bool? isTomorrow = true;

class _AddTasksScreenState extends State<AddTasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Task',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        child: Column(
          children: [
            Text(
              'Add a Task',
              style: AppThemes.titleTextStyle,
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Expanded(
                    child: Text(
                  'Name',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                )),
                Expanded(
                    flex: 3,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Lorem ipsom dolor',
                          hintStyle: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w400)),
                    ))
              ],
            ),
            SizedBox(
              height: 18,
            ),
            //take hour when learn it
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Hour',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
                Expanded(flex: 4, child: CustomTime()),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'Today',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Checkbox(
                      value: isTomorrow,
                      onChanged: (value) {
                        setState(() {
                          isTomorrow = value;
                        });
                      }),
                )
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    'Done',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              'If you disable today, the task will be considered as tomorrow',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
