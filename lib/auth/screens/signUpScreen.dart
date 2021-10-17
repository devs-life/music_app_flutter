import 'package:flutter/material.dart';
import 'package:music_app/auth/widgets/authOptionButton.dart';
import 'package:music_app/auth/widgets/authTextField.dart';
import 'package:music_app/auth/widgets/customBackButton.dart';
import 'package:music_app/components/gradientButton.dart';
import 'package:music_app/utils/konstants.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundBlack,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: _body(context),
        ),
      ),
    );
  }

  Widget _body(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomBackButton(),
              SizedBox(width: size.width * 0.07),
              Text(
                'Sign up',
                style: Theme.of(context).textTheme.headline3,
              ),
            ],
          ),
          SizedBox(height: size.height * 0.07),
          Text(
            'Sign up with one of following options.',
          ),
          SizedBox(height: size.height * 0.03),
          Row(
            children: [
              Expanded(
                child: AuthOptionButton(),
              ),
              SizedBox(width: size.height * 0.04),
              Expanded(
                child: AuthOptionButton(),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.04),
          Text(
            'Name',
            style:
                Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 16),
          ),
          SizedBox(height: size.height * 0.01),
          AuthTextField(hintText: 'Enter your name'),
          SizedBox(height: size.height * 0.03),
          Text(
            'Email',
            style:
                Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 16),
          ),
          SizedBox(height: size.height * 0.01),
          AuthTextField(hintText: 'tim@apple.com'),
          SizedBox(height: size.height * 0.03),
          Text(
            'Password',
            style:
                Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 16),
          ),
          SizedBox(height: size.height * 0.01),
          AuthTextField(hintText: 'Pick a strong password'),
          SizedBox(height: size.height * 0.04),
          GradientButton(),
        ],
      ),
    );
  }
}
