import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_dev_project/core/constants/app_colors.dart';

class OtpTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String? hintText;

  const OtpTextFieldWidget({
    super.key,
    required this.controller,
    required this.obscureText,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
          color: AppColors.borderColor,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignInside),
      borderRadius: BorderRadius.all(
        Radius.circular(4.0),
      ),
    );
    return SizedBox(
      width: 75.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            textAlign: TextAlign.center,
            maxLines: 1,
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
        ],
      ),
    );
  }
}
