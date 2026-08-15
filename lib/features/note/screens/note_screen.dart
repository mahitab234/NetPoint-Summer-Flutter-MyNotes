import 'package:flutter/material.dart';
import '../../../core/themes/app_colors.dart';
import '../views/note_app_bar_view.dart';
import '../widgets/note_details.dart';

class NoteScreen extends StatelessWidget{
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NoteAppBarView(),
      backgroundColor: AppColors.white,
      body: NoteDetails(),
      resizeToAvoidBottomInset: true,
    );
  }

}