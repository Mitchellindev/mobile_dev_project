import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_dev_project/core/constants/app_colors.dart';
import 'package:mobile_dev_project/features/admin/widgets/attendance_total_card_widget.dart';
import 'package:mobile_dev_project/features/admin/widgets/employee_card_widget.dart';

class SingleEmployeeScreen extends StatelessWidget {
  const SingleEmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text(
          'Back',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                EmployeeCardWidget(
                  name: 'Joan Phiri',
                  department: 'Cybersecurity Department',
                  image: Image.asset('assets/images/profile_2.png'),
                  time: '',
                  attendance: 'Present',
                  textColor: AppColors.lightBlue,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AttendanceTotalCard(
                      marginBottom: 0,
                      width: 170.w,
                      label: 'Total Check-ins',
                      total: '91',
                      borderColor: AppColors.white,
                    ),
                    AttendanceTotalCard(
                      marginBottom: 0,
                      width: 170.w,
                      label: 'Total Absences',
                      total: '5',
                      borderColor: AppColors.white,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AttendanceTotalCard(
                      marginBottom: 12,
                      width: 170.w,
                      label: 'Total Breaks',
                      total: '12',
                      borderColor: AppColors.white,
                    ),
                    AttendanceTotalCard(
                      marginBottom: 12,
                      width: 170.w,
                      label: 'Total Leaves',
                      total: '20',
                      borderColor: AppColors.white,
                    ),
                  ],
                ),
                SizedBox(height: 28.h),
                Text(
                  'Reports',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.secondary,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  '2024',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.secondary,
                  ),
                ),
                SizedBox(height: 10.h),
                ...List.generate(
                  4,
                  (index) {
                    return EmployeeCardWidget(
                      onTap: () {},
                      name: 'Monthly report',
                      department: '31 May 2024',
                      time: '11:40 PM',
                      attendance: 'Submitted in time',
                      textColor: AppColors.lightBlue,
                    );
                  },
                ),
                SizedBox(height: 10.h),
                Text(
                  '2024',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.secondary,
                  ),
                ),
                SizedBox(height: 10.h),
                ...List.generate(
                  4,
                  (index) {
                    return EmployeeCardWidget(
                      onTap: () {},
                      name: 'Monthly report',
                      department: '31 May 2024',
                      time: '11:40 PM',
                      attendance: 'Submitted in time',
                      textColor: AppColors.lightBlue,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
