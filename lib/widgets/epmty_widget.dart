import 'package:flutter/material.dart';
import 'package:todo_app_bet/theme/app_theme.dart';

class EpmtyWidget extends StatelessWidget {
  const EpmtyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'There is not any task now',
          style: AppThemes.titleTextStyle,
        )
      ],
    );
  }
}
