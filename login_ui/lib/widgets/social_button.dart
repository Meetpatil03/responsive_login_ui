import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/palletes.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final double horizontalPadding;
  const SocialButton({super.key, required this.iconPath, required this.label, this.horizontalPadding = 100});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: SvgPicture.asset(
        iconPath,
        color: Pallete.whiteColor,
        width: 30,
      ),
      label: Text(
        label,
        style: const TextStyle(color: Pallete.whiteColor, fontSize: 18),
      ),
      style: TextButton.styleFrom(
          padding:  EdgeInsets.symmetric(vertical: 30, horizontal: horizontalPadding),
          shape: RoundedRectangleBorder(
              side: const BorderSide(color: Pallete.borderColor, width: 3),
              borderRadius: BorderRadius.circular(10))),
    );
  }
}
