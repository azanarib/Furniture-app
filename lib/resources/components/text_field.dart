import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String? hintText;
  String? labelText;
  Icon? suffIcon;
  CustomTextField(
      {super.key, this.hintText = '', this.labelText = '', this.suffIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        suffixIcon: suffIcon,
        labelStyle: TextTheme.of(context)
            .bodySmall
            ?.copyWith(fontWeight: FontWeight.w400, fontSize: 19),
      ),
    );
  }
}
