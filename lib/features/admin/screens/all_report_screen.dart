import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_dev_project/core/constants/app_colors.dart';
import 'package:mobile_dev_project/features/admin/widgets/chip_widget.dart';

class AllReportScreen extends StatefulWidget {
  const AllReportScreen({super.key});

  @override
  State<AllReportScreen> createState() => _AllReportScreenState();
}

class _AllReportScreenState extends State<AllReportScreen> {
  final List<Map<String, dynamic>> employeeReport = [
    {
      'name': 'Joan Phiri',
      'department': 'Cybersecurity team',
    },
    {
      'name': 'Joe Mwenya',
      'department': 'UIUX designer',
    },
    {
      'name': 'Stacey Phiri',
      'department': 'Software developer',
    },
    {
      'name': 'Marianne Jones',
      'department': 'Project Manager',
    },
    {
      'name': 'Rachel Brown',
      'department': 'Graphic Designer',
    },
    {
      'name': 'Joan Phiri',
      'department': 'Cybersecurity team',
    },
    {
      'name': 'Becky Moss',
      'department': 'UIUX Designer',
    },
    {
      'name': 'Zuri Edison',
      'department': 'Cyber Security',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  'Review all reports below',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.secondary,
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.arrow_back_ios),
                    Column(
                      children: [
                        Text(
                          'MAY 2024',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          '4 out of 7 submissions',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.hintColor,
                          ),
                        ),
                      ],
                    ),
                    const Icon(Icons.arrow_forward_ios),
                  ],
                ),
                SizedBox(height: 20.h),
                ...List.generate(
                  employeeReport.length,
                  (index) {
                    final employee = employeeReport[index];
                    return Container(
                      margin: const EdgeInsets.only(top: 12),
                      child: ListTile(
                        tileColor: AppColors.white,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 12.w,
                          vertical: 8.h,
                        ),
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
                        trailing: GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) => Dialog(
                                child: Container(
                                  width: 335.w,
                                  height: 600.h,
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: 'Submitted on ',
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.black,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '31 August at 10:00 PM',
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w700,
                                                fontStyle: FontStyle.italic,
                                                color: AppColors.black,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' (on time)',
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 20.h),
                                      Text(
                                        'Team lead: Ruth Banda',
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.black,
                                        ),
                                      ),
                                      Text(
                                        'Members: Mary, Danielle and Jemimah',
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.black,
                                        ),
                                      ),
                                      SizedBox(height: 20.h),
                                      Text(
                                        'Tasks Achieved for the Month:',
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.black,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '1',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.black,
                                            ),
                                          ),
                                          SizedBox(width: 5.w),
                                          Expanded(
                                            child: Text(
                                              'Successfully redesigned the user dashboard, enhancing navigation and interface usability.',
                                              softWrap: true,
                                              maxLines: 5,
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.black,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5.h),
                                      Row(
                                        children: [
                                          Text(
                                            '2',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.black,
                                            ),
                                          ),
                                          SizedBox(width: 5.w),
                                          Expanded(
                                            child: Text(
                                              'Collaborated with the development team to integrate the newly designed admin dashboard, ensuring seamless functionality and a cohesive user experience.',
                                              softWrap: true,
                                              maxLines: 5,
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.black,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5.h),
                                      Row(
                                        children: [
                                          Text(
                                            '3',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.black,
                                            ),
                                          ),
                                          SizedBox(width: 5.w),
                                          Expanded(
                                            child: Text(
                                              'Conducted user testing sessions, gathered feedback, and made necessary adjustments to improve the new dashboard designs.',
                                              softWrap: true,
                                              maxLines: 5,
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.black,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20.h),
                                      Text(
                                        'Challenges Faced:',
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w700,
                                            color: AppColors.black,
                                            decoration:
                                                TextDecoration.underline),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '1',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.black,
                                            ),
                                          ),
                                          SizedBox(width: 5.w),
                                          Expanded(
                                            child: Text(
                                              'Remote Coordination: Scheduling challenges due to coordinating with remote team members across different time zones.',
                                              softWrap: true,
                                              maxLines: 5,
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.black,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20.h),
                                      Text(
                                        'Tasks for Next Month:',
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w700,
                                            color: AppColors.black,
                                            decoration:
                                                TextDecoration.underline),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '1',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.black,
                                            ),
                                          ),
                                          SizedBox(width: 5.w),
                                          Expanded(
                                            child: Text(
                                              'Mobile Version Development: Finalize the design for the mobile version of the website, ensuring all interactions are seamlessly integrated',
                                              softWrap: true,
                                              maxLines: 5,
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.black,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: const ChipWidget(
                                              label: 'Done',
                                              backgroundColor:
                                                  AppColors.primary,
                                              textColor: AppColors.white,
                                              borderRadius: 4,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          child: const ChipWidget(
                            label: 'View',
                            backgroundColor: AppColors.primary,
                            textColor: AppColors.white,
                            borderRadius: 4,
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
