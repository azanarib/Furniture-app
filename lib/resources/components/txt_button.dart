import 'package:flutter/material.dart';
import 'package:furniture_app/resources/colors/app_colors.dart';

class CustomTextButton extends StatefulWidget {
  String text;
  Function() onPress;
  CustomTextButton({super.key, this.text = "", required this.onPress});

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPress,
      child: Center(
        child: Text(
          widget.text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.btnBgColor,
            fontSize: 20,
            fontFamily: "Nunito Sans"
          ),
        ),
      ),
    );
  }
}
