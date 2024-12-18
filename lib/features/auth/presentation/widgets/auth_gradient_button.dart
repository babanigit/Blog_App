import 'package:blog_app/core/themes/app_palette.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  final String buttonText;

  const AuthGradientButton({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          gradient: const LinearGradient(colors: [
            AppPalette.gradient1,
            AppPalette.gradient2,
            // AppPalette.gradient3
          ], begin: Alignment.bottomLeft, end: Alignment.bottomRight)),
      child: ElevatedButton(
        onPressed: () => {},
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(395, 55),
            backgroundColor: AppPalette.transparentColor,
            shadowColor: AppPalette.transparentColor),
        child: Text(
          buttonText,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
