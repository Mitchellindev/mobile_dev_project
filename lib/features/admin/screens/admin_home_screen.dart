import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_dev_project/config/router/routes.dart';
import 'package:mobile_dev_project/core/constants/app_colors.dart';
import 'package:mobile_dev_project/features/admin/widgets/attendance_total_card_widget.dart';
import 'package:mobile_dev_project/features/admin/widgets/service_card_widget.dart';

class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({super.key});

  @override
  State<AdminHomeScreen> createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
  int _selected = 0;

  Widget _custonRadio(String text, String date, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selected = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 22, top: 22, right: 12),
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
        decoration: BoxDecoration(
          color: (_selected == index) ? AppColors.primary : AppColors.white,
          border: Border.all(color: AppColors.primary),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight:
                    (_selected == index) ? FontWeight.w900 : FontWeight.w500,
                color: (_selected == index) ? AppColors.white : AppColors.black,
              ),
            ),
            SizedBox(height: 12.h),
            Text(
              date,
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                color: (_selected == index)
                    ? AppColors.white
                    : AppColors.lightGrey,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> services = [
      {
        'image': 'assets/images/calendar_clock.png',
        'title': 'Attendance',
        'subtitle': 'View employee attendance here.',
        'onTap': () {
          Navigator.pushNamed(context, Routes.employeeAttendance);
        },
      },
      {
        'image': 'assets/images/report.png',
        'title': 'Reports',
        'subtitle': 'View all reports here.',
        'onTap': () {
          Navigator.pushNamed(context, Routes.reports);
        },
      },
      {
        'image': 'assets/images/leave_request.png',
        'title': 'Leave Requests',
        'subtitle': 'View all leave requests here.',
        'onTap': () {
          Navigator.pushNamed(context, Routes.employeeAttendance);
        },
      },
      {
        'image': 'assets/images/employees.png',
        'title': 'Employees',
        'subtitle': 'Check all employee records here',
        'onTap': () {
          Navigator.pushNamed(context, Routes.allEmployees);
        },
      },
    ];

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12.h),
                Text(
                  'Good Morning Mary',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 24.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.arrow_back_ios),
                    Text(
                      'June 2024',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Icon(Icons.arrow_forward_ios),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _custonRadio('Thu', '08', 1),
                      _custonRadio('Fri', '09', 2),
                      _custonRadio('Sat', '10', 3),
                      _custonRadio('Sun', '11', 4),
                      _custonRadio('Mon', '11', 5),
                      _custonRadio('Tue', '12', 6),
                      _custonRadio('Wed', '13', 7),
                      _custonRadio('Thu', '14', 8),
                      _custonRadio('Fri', '15', 9),
                    ],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AttendanceTotalCard(
                      label: 'Present',
                      total: '18',
                      borderColor: AppColors.white,
                    ),
                    AttendanceTotalCard(
                      label: 'Absent',
                      total: '0',
                      borderColor: AppColors.white,
                    ),
                    AttendanceTotalCard(
                      label: 'On Break',
                      total: '0',
                      borderColor: AppColors.white,
                    ),
                  ],
                ),
                Text(
                  'View all your services in one place. ',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.secondary,
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  height: 400.h,
                  child: GridView.builder(
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 12.h,
                      crossAxisSpacing: 12.w,
                    ),
                    itemBuilder: (BuildContext context, index) {
                      return ServicesCardWidget(
                        image: services[index]['image'],
                        title: services[index]['title'],
                        subtitle: services[index]['subtitle'],
                        onTap: services[index]['onTap'],
                      );
                    },
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  'Notification',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.secondary,
                  ),
                ),
                SizedBox(height: 20.h),
                ...List.generate(
                  10,
                  (index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      child: ListTile(
                        tileColor: AppColors.white,
                        contentPadding: const EdgeInsets.only(left: 12),
                        leading: const CircleAvatar(),
                        title: Text(
                          'Joe Mwenya has checked in 10:25 AM',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        subtitle: Text(
                          'Software developer',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.hintColor,
                          ),
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
