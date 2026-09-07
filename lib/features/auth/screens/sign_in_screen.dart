import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_notes/features/auth/screens/sign_up_screen.dart';
import 'package:my_notes/features/auth/widgets/auth_footer.dart';
import '../../../core/themes/app_colors.dart';
import '../views/auth_text_field_view.dart';
import '../widgets/auth_welcome.dart';

class SignInScreen extends StatefulWidget {

  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 30.sp,
            children: [
              AuthWelcome(),

              AuthTextFieldView(
                controller: emailController,
                icon: Icons.email,
                labelText: 'Email',
                validator: (value) =>
                    emailController.text.trim().isNotEmpty && emailController.text.contains(
                        RegExp(r'^[\w.-]+@[\w.-]+\.\w{2,}$')
                    )?
                      null : "Insufficient email!",
              ),

              AuthTextFieldView(
                controller: passwordController,
                icon: Icons.lock,
                labelText: 'Password',
                obscureText: true,
                validator: (value) =>
                  passwordController.text.trim().isNotEmpty?
                    null : "Enter your password!",
              ),

              AuthFooter(
                footerText: "Don't have account? ",
                text: 'Sign Up',
                widget: SignUpScreen(),
              )
            ],
          ),
        ),
      ),
    );
  }
}