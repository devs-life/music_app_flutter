import 'package:flutter/material.dart';
import 'package:music_app/utils/konstants.dart';

class AuthOptionButton extends StatelessWidget {
  const AuthOptionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Icon(
        Icons.face_outlined,
        color: Colors.white,
        size: 22,
      ),
      decoration: BoxDecoration(
        color: darkBackgroundColor,
        border: Border.all(color: pureGrey, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
