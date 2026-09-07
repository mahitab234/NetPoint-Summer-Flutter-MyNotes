import 'package:flutter/material.dart';
import '../../../core/themes/app_text_styles.dart';

class AuthTextButtonView extends StatefulWidget {
  final String? text;
  final Widget? widget;
  const AuthTextButtonView ({
    super.key,
    required this.text,
    required this.widget
  });

  @override
  State<AuthTextButtonView> createState() => _AuthTextButtonViewState();
}

class _AuthTextButtonViewState extends State<AuthTextButtonView> {
  @override
  Widget build (BuildContext context){
    return TextButton (
      onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => widget.widget!,)
        );
      },
      child: Text(
        widget.text!,
        style: AppTextStyles.labelLarge,
      ),
    );
  }
}