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
    var brightness = Theme.of(context).brightness;
    return Container(
      child: TextField(
        obscureText: isPassword,
        decoration: textFieldCommonDecoration(brightness).copyWith(
          hintText: hintText,
        ),
      ),
    );
  }
}
