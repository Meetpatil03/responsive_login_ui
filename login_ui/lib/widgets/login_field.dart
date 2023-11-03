import 'package:flutter/material.dart';
import 'package:login_ui/palletes.dart';

class LoginField extends StatelessWidget {
  final String hintText;
  const LoginField({super.key,required this.hintText});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(27),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(color: Pallete.borderColor, width: 3)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Pallete.gradient2,
              width: 3,
            ),
          ),
          hintText: hintText
        ),
      ),
    );
  }
}
