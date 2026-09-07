import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';

class HomeAppBarView extends StatelessWidget implements PreferredSizeWidget{
  const HomeAppBarView({super.key});

  @override
  Size get preferredSize => Size.fromHeight(80.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.logout, color: AppColors.red, size: 25.sp)
        )
      ],
      actionsPadding: EdgeInsets.only(right: 10.w),
      backgroundColor: AppColors.white,
      centerTitle: true,
      leading: Icon(Icons.edit_note_outlined, color: AppColors.primary, size: 30.sp),
      title: Text("My Notes"),
      titleTextStyle: AppTextStyles.heading,
    );
  }


}