import 'package:flutter/material.dart';
import 'package:music_app/utils/konstants.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: textFieldCommonDecoration.copyWith(
          hintText: hintText,
        ),
      ),
    );
  }
}
