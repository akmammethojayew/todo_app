import 'package:flutter/material.dart';

class CustomCardWidget extends StatefulWidget {
  const CustomCardWidget({
    super.key,
    required this.title,
  });
  final String title;
  @override
  State<CustomCardWidget> createState() => _CustomCardWidgetState();
}

class _CustomCardWidgetState extends State<CustomCardWidget> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: isChecked,
        onChanged: (value) {
          setState(() {
            isChecked = value;
          });
        },
      ),
      title: Text(widget.title),
      subtitle: const Text(
        // I gave from another page Time toString
        '12:42 PM',
        style: TextStyle(decoration: TextDecoration.lineThrough),
      ),
    );
  }
}
