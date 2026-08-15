import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/themes/app_colors.dart';
import 'note_body.dart';
import 'note_title.dart';
import 'note_modification_date.dart';

class NoteDetails extends StatelessWidget {
  const NoteDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentGeometry.topStart,
      decoration: BoxDecoration(
          color: AppColors.white,
          border: Border.all(
              style: BorderStyle.solid,
              width: 1.w,
              color: AppColors.primary
          ),
          borderRadius: BorderRadius.all(Radius.circular(15.r))
      ),
      height: ((MediaQuery.sizeOf(context).height) - 120.h),
      margin: EdgeInsets.all(10.sp),
      padding: EdgeInsets.all(10.sp),
      width: MediaQuery.sizeOf(context).width.w,

      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 15.h,

          children: [
            NoteTitle(),
            NoteModificationDate(),
            Divider(
              color: AppColors.primary,
              thickness: 1.h,
            ),
            NoteBody()
          ]

        ),
      )
    );
  }
}