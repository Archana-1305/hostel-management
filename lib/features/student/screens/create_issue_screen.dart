import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hostelmanagementapp/common/app_bar.dart';
import 'package:hostelmanagementapp/common/spacing.dart';
import 'package:hostelmanagementapp/theme/text_theme.dart';

class StudentCreateIssue extends StatefulWidget {
  const StudentCreateIssue({super.key});

  @override
  State<StudentCreateIssue> createState() => _StudentCreateIssueState();
}

class _StudentCreateIssueState extends State<StudentCreateIssue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        'Issues',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heightSpacer(15),
              Text(
                "Room Number",
                style: AppTextTheme.kLabelStyle,
              ),
              Container(
                padding: EdgeInsets.all(12),
                width: double.maxFinite,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0xffD4E2D4)),
                      borderRadius: BorderRadius.circular(14)),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "101",
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
