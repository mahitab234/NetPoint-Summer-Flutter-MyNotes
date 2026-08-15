import 'package:flutter/material.dart';
import '../../../core/themes/app_text_styles.dart';

class NoteTitle extends StatelessWidget{
  const NoteTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Note Title", style: AppTextStyles.heading,);
  }
}