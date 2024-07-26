import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_dev_project/core/constants/app_colors.dart';

class AttendanceTotalCard extends StatelessWidget {
  const AttendanceTotalCard({
    super.key,
    required this.label,
    required this.total,
    required this.borderColor,
    this.width = 100,
    this.marginBottom = 22,
    this.textColor = AppColors.primary,
    this.height,
  });
  final String label;
  final String total;
  final double width;
  final double? height;
  final double marginBottom;
  final Color borderColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(bottom: marginBottom, top: 12),
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: borderColor)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.black,
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            total,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: textColor,
            ),
          )
        ],
      ),
    );
  }
}
