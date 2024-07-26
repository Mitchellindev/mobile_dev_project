import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_dev_project/config/router/routes.dart';
import 'package:mobile_dev_project/core/constants/app_colors.dart';
import 'package:mobile_dev_project/features/admin/widgets/attendance_total_card_widget.dart';
import 'package:mobile_dev_project/features/admin/widgets/chip_widget.dart';
import 'package:mobile_dev_project/features/admin/widgets/employee_card_widget.dart';

class AllOfEmployeeScreen extends StatefulWidget {
  const AllOfEmployeeScreen({super.key});

  @override
  State<AllOfEmployeeScreen> createState() => _AllOfEmployeeScreenState();
}

class _AllOfEmployeeScreenState extends State<AllOfEmployeeScreen> {
  final List<String> departments = const [
    'All',
    'Cybersecurity',
    'Finance',
    'UI/UX designers',
    'Project Manager',
    'Software developer',
    'Technical Writer',
    'Graphic Designer',
  ];

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

  late String selectedDepartment;
  @override
  void initState() {
    super.initState();
    selectedDepartment = departments[0];
  }

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
                  'A list of all your Employees',
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
                      Text(
                        'Summary',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AttendanceTotalCard(
                            label: 'Total Employees',
                            total: '84',
                            borderColor: AppColors.inputGrey,
                            width: 157.w,
                          ),
                          SizedBox(width: 12.w),
                          AttendanceTotalCard(
                            label: 'Departments',
                            total: '7',
                            borderColor: AppColors.inputGrey,
                            width: 157.w,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 12.h),
                SizedBox(
                  height: 40.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: departments.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.w,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedDepartment = departments[index];
                            });
                          },
                          child: ChipWidget(
                            label: departments[index],
                            backgroundColor:
                                selectedDepartment == departments[index]
                                    ? AppColors.primary
                                    : AppColors.white,
                            textColor: selectedDepartment == departments[index]
                                ? AppColors.white
                                : AppColors.lightBlue,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                ...List.generate(
                  employees.length,
                  (index) {
                    final employee = employees[index];
                    return EmployeeCardWidget(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.singleEmployees);
                      },
                      name: employee['name'],
                      department: employee['department'],
                      image: Image.asset(employee['image']),
                      time: employee['time'],
                      attendance: employee['attendance'],
                      textColor: employee['attendance'] == 'Present'
                          ? AppColors.lightBlue
                          : AppColors.red,
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
