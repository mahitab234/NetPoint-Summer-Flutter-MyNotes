import 'package:flutter/material.dart';
import '../../../core/themes/app_text_styles.dart';

class NoteModificationDate extends StatelessWidget{
  const NoteModificationDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Modified at: Today 05:51 AM", style: AppTextStyles.caption,);
  }
}