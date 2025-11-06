import 'package:doctorproject/core/helpers/spacing.dart';
import 'package:doctorproject/core/theming/styles.dart';
import 'package:doctorproject/core/widgets/app_text_Button.dart';
import 'package:doctorproject/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
          child: Column(
            children: [
              Text('Welcome Back', style: TextStyles.font24BlueBold),
              verticalSpacing(8),
              Text(
                'Were excited to have you back,'
                ' cant wait to see what you have been up to since you last logged in.',
                style: TextStyles.font13GrayRegular,
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    AppTextFormField(hintText: 'Email'),
                    verticalSpacing(18),
                    AppTextFormField(
                      hintText: 'Password',
                      isObscureText: isObscureText,
                      suffixIcon: IconButton(
                        icon: Icon(
                          isObscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          isObscureText = !isObscureText;
                        },
                      ),
                    ),
                    verticalSpacing(24),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyles.font13BlueRegular,
                      ),
                    ),
                    verticalSpacing(40),
                    AppTextButton(
                      textStyles: TextStyles.font16WhiteSemiBold,
                      onPressed: () {  }, buttonText:'Login',
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
