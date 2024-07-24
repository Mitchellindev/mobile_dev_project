import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_dev_project/core/constants/app_colors.dart';

class PasswordTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String? hintText;
  final String label;
  final String passwordLengthText;

  const PasswordTextFieldWidget({
    super.key,
    required this.controller,
    required this.obscureText,
    this.hintText,
    required this.label,
    required this.passwordLengthText,
  });

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
          color: AppColors.borderColor,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignInside),
      borderRadius: BorderRadius.all(
        Radius.circular(8.0),
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w800,
          ),
        ),
        SizedBox(height: 8.h),
        TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            fillColor: AppColors.white,
            hintText: hintText,
            hintStyle: const TextStyle(
              color: AppColors.borderColor,
            ),
            contentPadding:
                EdgeInsets.symmetric(vertical: 13.h, horizontal: 16.w),
            focusedBorder: border,
            enabledBorder: border,
            filled: true,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          passwordLengthText,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.hintColor,
          ),
        ),
      ],
    );
  }
}
