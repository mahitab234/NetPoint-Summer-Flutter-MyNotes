import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle _base({
    required double fontSize,
    required FontWeight fontWeight,
    required double height,
    required Color color,
    double? letterSpacing,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      fontSize: fontSize.sp,
      fontWeight: fontWeight,
      height: height.h,
      color: color,
      letterSpacing: letterSpacing,
      decoration: decoration,
    );
  }

  /// Headings — screen titles
  static TextStyle get heading => _base(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    height: 1.15,
    color: AppColors.primary,
  );

  /// Body text
  static TextStyle get body => _base(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.25,
    color: AppColors.black,
  );

  /// Labels / Captions — chips, small metadata
  static TextStyle get labelLarge => _base(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.15,
    color: AppColors.primary,
  );

  static TextStyle get caption => _base(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    height: 1.15,
    color: AppColors.grey,
  );

  /// Error / validation messages
  static TextStyle get error => _base(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.15,
    color: AppColors.red,
  );
}