import 'package:flutter/material.dart';
import 'package:login_ui/palletes.dart';
import 'package:login_ui/widgets/login_button.dart';
import 'package:login_ui/widgets/login_field.dart';
import 'package:login_ui/widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Image.asset('assets/images/signin_balls.png'),
              const Text(
                'Sign in.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48),
              ),
              const SizedBox(
                height: 50,
              ),
              const SocialButton(
                iconPath: 'assets/svg/f_logo.svg',
                label: 'Continue with Facebook',
                horizontalPadding: 90,
              ),
              const SizedBox(
                height: 20,
              ),
              const SocialButton(
                  iconPath: 'assets/svg/g_logo.svg',
                  label: 'Continue with Google'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'or',
                style: TextStyle(color: Pallete.whiteColor, fontSize: 17),
              ),
              const SizedBox(
                height: 20,
              ),
              const LoginField(
                hintText: 'Email',
              ),
              const SizedBox(height: 20),
              const LoginField(hintText: 'Password'),
              const SizedBox(
                height: 50,
              ),
              const LoginButton()
            ],
          ),
        ),
      )),
    );
  }
}
