import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_dev_project/config/router/routes.dart';
import 'package:mobile_dev_project/core/constants/app_colors.dart';
import 'package:mobile_dev_project/features/auth/widgets/button_widget.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 32.h),
          child: Column(
            children: [
              Text(
                'Enter Reset Code',
                style: TextStyle(
                  fontSize: 20.sp,
                  color: AppColors.secondary,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                'Please enter the 4 digit code sent to your email address.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                ),
              ),
              SizedBox(height: 32.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: OTPTextField(
                      outlineBorderRadius: 4,
                      length: 4,
                      spaceBetween: 10.w,
                      fieldWidth: 75.w,
                      style: const TextStyle(fontSize: 17),
                      textFieldAlignment: MainAxisAlignment.spaceBetween,
                      fieldStyle: FieldStyle.box,
                      onCompleted: (pin) {},
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32.h),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Havent received the code? ',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: AppColors.lightGrey,
                      ),
                    ),
                    TextSpan(
                      text: 'Resend code',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primary,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.h),
              MyButton(
                label: 'Continue',
                backgroundColor: AppColors.primary,
                onPressed: () {
                  Navigator.pushNamed(context, Routes.resetPassword);
                },
                textColor: AppColors.white,
                borderColor: AppColors.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
