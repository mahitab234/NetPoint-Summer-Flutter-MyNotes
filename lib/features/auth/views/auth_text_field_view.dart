import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_notes/core/themes/app_colors.dart';
import 'package:my_notes/core/themes/app_text_styles.dart';

class AuthTextFieldView extends StatefulWidget{
  final String? labelText;
  final IconData? icon;
  final FormFieldValidator? validator;
  final TextEditingController? controller;
  final bool obscureText;  const AuthTextFieldView({
    super.key,
    required this.labelText,
    this.icon,
    required this.controller,
    this.obscureText = false,
    this.validator
  });

  @override
  State<AuthTextFieldView> createState() => _AuthTextFieldViewState();
}

class _AuthTextFieldViewState extends State<AuthTextFieldView> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.w,
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,

        decoration: InputDecoration(

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: BorderSide(
              color: AppColors.primary,
              width: 1.w,
              style: BorderStyle.solid
            )
          ),

          contentPadding: EdgeInsets.all(5.sp),

            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.r),
                borderSide: BorderSide(
                    color: AppColors.grey,
                    width: 1.w,
                    style: BorderStyle.solid
                )
            ),

          enabled: true,

          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: BorderSide(
                  color: AppColors.primary,
                  width: 1.w,
                  style: BorderStyle.solid
              )
          ),

          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: BorderSide(
                  color: AppColors.red,
                  width: 1.w,
                  style: BorderStyle.solid
              )
          ),

          errorStyle: AppTextStyles.error,

          focusedBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: BorderSide(
                  color: AppColors.primary,
                  width: 1.w,
                  style: BorderStyle.solid
              )
          ),

          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: BorderSide(
                  color: AppColors.red,
                  width: 1.w,
                  style: BorderStyle.solid
              )
          ),

          icon: Icon(
            widget.icon,
            color: AppColors.primary,
            size: 20.sp,
          ),

          labelStyle: AppTextStyles.labelLarge,
          labelText: widget.labelText,

        ),

        controller: widget.controller,
        cursorColor: AppColors.primary,
        cursorErrorColor: AppColors.red,
        obscureText: widget.obscureText,
        validator: widget.validator,
      ),
    );
  }
}