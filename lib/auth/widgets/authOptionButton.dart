import 'package:flutter/material.dart';
import 'package:music_app/utils/konstants.dart';

class AuthOptionButton extends StatelessWidget {
  const AuthOptionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var brightness = Theme.of(context).brightness;
    return Container(
      height: 60,
      child: Icon(
        Icons.face_outlined,
        color: brightness == Brightness.light
            ? Colors.black.withOpacity(0.5)
            : Colors.white.withOpacity(0.5),
        size: 22,
      ),
      decoration: BoxDecoration(
        color: brightness == Brightness.dark
            ? darkBackgroundColor
            : lightBackgroundColor,
        border: Border.all(color: pureGrey, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
