import 'package:flutter/material.dart';
import 'package:music_app/utils/konstants.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      padding: EdgeInsets.only(left: 8),
      child: Icon(
        Icons.arrow_back_ios,
        color: Colors.white,
        size: 22,
      ),
      decoration: BoxDecoration(
        color: backgroundBlack,
        border: Border.all(color: pureGrey, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
