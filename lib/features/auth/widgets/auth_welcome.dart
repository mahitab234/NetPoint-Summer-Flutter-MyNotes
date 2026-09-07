import 'package:flutter/material.dart';
import '../../../core/themes/app_text_styles.dart';

class AuthWelcome extends StatelessWidget {
  const AuthWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Welcome to MyNotes",
      style: AppTextStyles.heading,
    );
  }


}