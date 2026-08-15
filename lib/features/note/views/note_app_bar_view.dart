import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/themes/app_colors.dart';

class NoteAppBarView extends StatelessWidget implements PreferredSizeWidget{
  const NoteAppBarView({super.key});

  @override
  Size get preferredSize => Size.fromHeight(50.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.save_outlined,
              color: AppColors.primary,
              size: 30.sp,
              semanticLabel: "Save",
            ),
        ),
        IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.delete_outline,
            color: AppColors.red,
            size: 30.sp,
            semanticLabel: "Delete",
          ),
        ),

      ],
      actionsPadding: EdgeInsets.all(10.sp),
      backgroundColor: AppColors.white,
    );
  }
  
}