import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_dev_project/core/constants/app_colors.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({
    super.key,
    required this.label,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius = 40,
  });

  final String label;
  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: backgroundColor,
      labelStyle: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w700,
        color: textColor,
      ),
      side: const BorderSide(color: AppColors.lightBlue),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 20.w),
      label: Text(label),
    );
  }
}
