import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  String? hintText;
  String? labelText;
  Icon? suffIcon;
  String? Function(String?)? validate;
  TextEditingController? controller;
  CustomTextField({
    super.key,
    this.controller,
    this.hintText = '',
    this.labelText = '',
    this.suffIcon,
    this.validate,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validate,
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
