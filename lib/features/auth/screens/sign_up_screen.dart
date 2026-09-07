import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../views/auth_button_view.dart';
import '../views/auth_text_field_view.dart';
import '../widgets/auth_footer.dart';
import '../widgets/auth_welcome.dart';
import 'sign_in_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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

              AuthTextFieldView(
                controller: confirmPasswordController,
                labelText: 'Confirm Password',
                obscureText: true,
                validator: (value) =>
                  passwordController.text == confirmPasswordController.text?
                    null : 'Passwords do not match!',
              ),

              AuthButtonView(text: 'Sign Up'),

              AuthFooter(
                footerText: "Already have account? ",
                text: 'Sign In',
                widget: SignInScreen(),
              )
            ],
          ),
        ),
      ),
    );
  }
}