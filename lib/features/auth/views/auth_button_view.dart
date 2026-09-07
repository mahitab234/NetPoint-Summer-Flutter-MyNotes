import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../home/screens/home_screen.dart';

class AuthButtonView extends StatelessWidget{
  final String? text;
  const AuthButtonView({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      width: 200.w,
      child: MaterialButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => HomeScreen(),)
          );
        },
        color: AppColors.primary,

        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(15.r)
        ),
        child: Text(
          text!,
          style: AppTextStyles.heading.copyWith(color: AppColors.white),
        ),
      ),
    );
  }

}