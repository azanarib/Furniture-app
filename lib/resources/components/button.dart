import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/resources/colors/app_colors.dart';

class Button extends StatefulWidget {
  String text;
  String fontFamily;
  FontWeight fw;
  bool change = false;
  double height;
  double width;
  Icon? icon;
  void Function()? onPressed;
  Color textColor;
  Color bgColor;
  Color splashColor;
  Button({
    super.key,
    this.height = 60,
    this.width = 160,
    this.fontFamily = "Gelasio",
    required this.text,
    this.change = false,
    this.icon,
    this.onPressed,
    this.bgColor = AppColors.btnBgColor,
    this.splashColor = AppColors.splash,
    this.textColor = AppColors.btnTextColor,
    this.fw = FontWeight.w600,
  });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: widget.change
          ? BorderRadius.circular(100)
          : BorderRadius.circular(16),
      color: widget.bgColor,
      child: InkWell(
        onTap: widget.onPressed,
        borderRadius: widget.change
            ? BorderRadius.circular(100)
            : BorderRadius.circular(16),
        splashColor: widget.splashColor,
        child: AnimatedContainer(
          height: widget.change ? 60 : widget.height,
          width: widget.change ? 70 : widget.width,
          duration: Duration(
            seconds: 2,
          ),
          child: Center(
            child: widget.change
                ? widget.icon
                : Text(
                    widget.text,
                    style: TextStyle(
                      color: widget.textColor,
                      fontFamily: widget.fontFamily,
                      fontWeight: widget.fw,
                    ),
                    textAlign: TextAlign.center,
                  ),
          ),
        ),
      ),
    );
  }
}
