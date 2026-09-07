import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_notes/features/auth/views/auth_text_button_view.dart';
import '../../../core/themes/app_text_styles.dart';

class AuthFooter extends StatelessWidget{
  final String? footerText;
  final String? text;
  final Widget? widget;
  const AuthFooter({
    super.key,
    required this.footerText,
    required this.text,
    required this.widget
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      spacing: 5.sp,
      children: [
        Text (
          footerText!,
          style: AppTextStyles.caption,
        ),
        AuthTextButtonView(
            text: text,
            widget: widget
        )
      ],
    );
  }


}