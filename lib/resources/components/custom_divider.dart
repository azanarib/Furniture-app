import 'package:flutter/material.dart';
import 'package:furniture_app/resources/colors/app_colors.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      width: 130,
      decoration: BoxDecoration(
        color: AppColors.dividerColor,
      ),
    );
  }
}
