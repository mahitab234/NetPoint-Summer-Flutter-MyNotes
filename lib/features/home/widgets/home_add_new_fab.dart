import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/themes/app_colors.dart';
import '../../note/screens/note_screen.dart';

class HomeAddNewFab extends StatelessWidget{
  const HomeAddNewFab({super.key});

  @override
  Widget build(BuildContext context) {

    return FloatingActionButton(
      onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => NoteScreen(),)
        );
      },
      backgroundColor: AppColors.primary,
      child: Icon(
        Icons.add,
        color: AppColors.white,
        size: 30.sp,
        semanticLabel: "Add Note",
      ),
    );

  }
}