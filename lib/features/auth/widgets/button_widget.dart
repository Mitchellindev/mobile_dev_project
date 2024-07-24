import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {super.key,
      required this.label,
      required this.backgroundColor,
      required this.onPressed,
      required this.textColor,
      required this.borderColor});

  final String label;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final Color textColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 14.h),
        elevation: 0,
        foregroundColor: textColor,
        backgroundColor: backgroundColor,
        minimumSize: Size(double.infinity.w, 50.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: BorderSide(color: borderColor, style: BorderStyle.solid),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
