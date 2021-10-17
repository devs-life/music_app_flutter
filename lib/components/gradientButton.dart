import 'package:flutter/material.dart';
import 'package:music_app/utils/konstants.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            secondaryRedColor,
            primaryRedColor,
          ],
        ),
      ),
      child: Center(
          child: Text(
        'Create Account',
        style: Theme.of(context)
            .textTheme
            .bodyText2!
            .copyWith(fontWeight: FontWeight.bold, fontSize: 16),
      )),
    );
  }
}
