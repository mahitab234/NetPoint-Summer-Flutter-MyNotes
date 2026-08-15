import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../note/screens/note_screen.dart';

class HomeNoteTile extends StatelessWidget{
  const HomeNoteTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.sp),
      child: ListTile(
        title: Text("Note Title"),
        titleTextStyle: AppTextStyles.labelLarge,
        subtitle: Text("details of the note"),
        subtitleTextStyle: AppTextStyles.caption,
        trailing: Text("12:00 PM", style: AppTextStyles.caption),
        shape: Border(
          bottom: BorderSide(
            style: BorderStyle.solid,
            width: 1.w,
            color: AppColors.black
          )
        ),
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NoteScreen(),)
          );
        },
      ),
    );
  }

}