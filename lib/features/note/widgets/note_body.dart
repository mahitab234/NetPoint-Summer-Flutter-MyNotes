import 'package:flutter/material.dart';
import '../../../core/themes/app_text_styles.dart';

class NoteBody extends StatelessWidget{
  const NoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello, from note details screen. I am a note content now! Complete the design soon, and see you then. Good Bye!",
      style: AppTextStyles.body,
    );
  }

}