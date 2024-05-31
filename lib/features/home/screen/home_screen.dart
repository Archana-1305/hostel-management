import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hostelmanagementapp/common/constants.dart';
import 'package:hostelmanagementapp/common/spacing.dart';
import 'package:hostelmanagementapp/features/home/screen/widgets/category_card.dart';
import 'package:hostelmanagementapp/features/student/screens/create_issue_screen.dart';
import 'package:hostelmanagementapp/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Dashboard",
          style: AppTextTheme.kLabelStyle.copyWith(fontSize: 22.sp),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.w),
            child: InkWell(
              onTap: () {},
              child: SvgPicture.asset(AppConstants.profile),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: Column(
          children: [
            heightSpacer(20),
            Container(
              height: 140.h,
              width: double.maxFinite,
              decoration: const ShapeDecoration(
                color: Color(0xffEEEEEE),
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 2,
                      color: Color(0xff0C0C0C),
                    ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(2))),
                shadows: [
                  BoxShadow(
                      color: Color(0xffB2B2B2),
                      blurRadius: 8,
                      offset: Offset(2, 4),
                      spreadRadius: 0),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40.0, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello Admin!!",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff373A40),
                              fontSize: 24.sp),
                        ),
                        heightSpacer(15),
                        Text(
                          "Room No : 101",
                          style: TextStyle(
                              color: const Color(0xff373A40), fontSize: 15.sp),
                        ),
                        Text(
                          "Block No : A",
                          style: TextStyle(
                              color: const Color(0xff373A40), fontSize: 15.sp),
                        ),
                      ],
                    ),
                    widthSpacer(10),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 60,
                        bottom: 5,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 50,
                              height: 50,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const StudentCreateIssue(),
                                    ),
                                  );
                                },
                                child: SvgPicture.asset(
                                  AppConstants.createIssue,
                                ),
                              )),
                          Text(
                            "Create Issues",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            heightSpacer(30),
            Container(
              width: double.maxFinite,
              color: const Color(0xffEAEAEA),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  heightSpacer(20),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                        color: const Color(0xff373A40),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  heightSpacer(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CategoryCard(
                        category: 'Room\nAvailability',
                        onTap: () {},
                        image: AppConstants.roomAvailability,
                      ),
                      CategoryCard(
                        category: 'All\nIssues',
                        onTap: () {},
                        image: AppConstants.allIssues,
                      ),
                      CategoryCard(
                        category: 'Staff\nMembers',
                        onTap: () {},
                        image: AppConstants.staffMember,
                      ),
                    ],
                  ),
                  heightSpacer(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CategoryCard(
                        category: 'Create\nStaff',
                        onTap: () {},
                        image: AppConstants.createStaff,
                      ),
                      CategoryCard(
                        category: 'Hostel\nFee',
                        onTap: () {},
                        image: AppConstants.hostelFee,
                      ),
                      CategoryCard(
                        category: 'Change\nRequests',
                        onTap: () {},
                        image: AppConstants.roomChange,
                      ),
                    ],
                  ),
                  heightSpacer(20),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
