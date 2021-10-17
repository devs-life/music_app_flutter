import 'package:flutter/material.dart';
import 'package:music_app/utils/konstants.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    Key? key,
    required this.hintText,
    this.isPassword = false,
  }) : super(key: key);

  final String hintText;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        obscureText: isPassword,
        decoration: textFieldCommonDecoration.copyWith(
          hintText: hintText,
        ),
      ),
    );
  }
}
