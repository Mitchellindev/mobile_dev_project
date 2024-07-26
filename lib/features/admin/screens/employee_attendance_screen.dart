import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_dev_project/core/constants/app_colors.dart';
import 'package:mobile_dev_project/features/admin/widgets/attendance_total_card_widget.dart';

class EmployeeAttendanceScreen extends StatefulWidget {
  const EmployeeAttendanceScreen({super.key});

  @override
  State<EmployeeAttendanceScreen> createState() =>
      _EmployeeAttendanceScreenState();
}

class _EmployeeAttendanceScreenState extends State<EmployeeAttendanceScreen> {
  final List<Map<String, dynamic>> employees = [
    {
      'name': 'Joan Phiri',
      'department': 'Cybersecurity team',
      'image': 'assets/images/profile_1.png',
      'attendance': 'Present',
      'time': '10:25 AM',
    },
    {
      'name': 'Joe Mwenya',
      'department': 'UIUX designer',
      'image': 'assets/images/profile_2.png',
      'attendance': 'Present',
      'time': '10:20 AM',
    },
    {
      'name': 'Stacey Phiri',
      'department': 'Software developer',
      'image': 'assets/images/profile_3.png',
      'attendance': 'Present',
      'time': '10:18 AM',
    },
    {
      'name': 'Marianne Jones',
      'department': 'Project Manager',
      'image': 'assets/images/profile_4.png',
      'attendance': 'Present',
      'time': '9:25 AM',
    },
    {
      'name': 'Rachel Brown',
      'department': 'Graphic Designer',
      'image': 'assets/images/profile_1.png',
      'attendance': 'Absent',
      'time': '--:--',
    },
    {
      'name': 'Joan Phiri',
      'department': 'Cybersecurity team',
      'image': 'assets/images/profile_2.png',
      'attendance': 'Present',
      'time': '10:25 AM',
    },
    {
      'name': 'Becky Moss',
      'department': 'UIUX Designer',
      'image': 'assets/images/profile_3.png',
      'attendance': 'Present',
      'time': '8:35 AM',
    },
    {
      'name': 'Zuri Edison',
      'department': 'Cyber Security',
      'image': 'assets/images/profile_4.png',
      'attendance': 'Absent',
      'time': '--:--',
    }
  ];

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
                Text(
                  'Check your employee’s attendance',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.secondary,
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  width: double.infinity.w,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Summary',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Sat, 08 June, 2024',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.hintColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AttendanceTotalCard(
                            label: 'Present',
                            total: '18',
                            borderColor: AppColors.inputGrey,
                            width: 157.w,
                          ),
                          SizedBox(width: 12.w),
                          AttendanceTotalCard(
                            label: 'Absent',
                            total: '2',
                            borderColor: AppColors.inputGrey,
                            width: 157.w,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Departments',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: AppColors.lightBlue),
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/images/filter.png'),
                          SizedBox(width: 10.w),
                          Text(
                            'Filter',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.lightBlue,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                ...List.generate(
                  employees.length,
                  (index) {
                    final employee = employees[index];
                    return Container(
                      margin: const EdgeInsets.only(top: 12),
                      child: ListTile(
                        tileColor: AppColors.white,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 12.w,
                          vertical: 8.h,
                        ),
                        leading: Image.asset(employee['image']),
                        title: Text(
                          employee['name'],
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        subtitle: Text(
                          employee['department'],
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.hintColor,
                          ),
                        ),
                        trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              employee['time'],
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              employee['attendance'],
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: employee['attendance'] == 'Present'
                                    ? AppColors.lightBlue
                                    : AppColors.red,
                              ),
                            )
                          ],
                        ),
                      ),
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
