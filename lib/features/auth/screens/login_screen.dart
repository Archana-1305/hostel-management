import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hostelmanagementapp/common/spacing.dart';
import 'package:hostelmanagementapp/common/custom_text_field.dart';
import 'package:hostelmanagementapp/features/auth/screens/register_screen.dart';
import 'package:hostelmanagementapp/features/auth/widgets/custom_button.dart';
import 'package:hostelmanagementapp/features/home/screen/home_screen.dart';
import 'package:hostelmanagementapp/theme/colors.dart';
import 'package:hostelmanagementapp/theme/text_theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static final _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 100.h),
          child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/logo.jpg',
                      height: 200.h,
                    ),
                  ),
                  heightSpacer(20),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: const Color(0xff333333),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  heightSpacer(25),
                  Text(
                    "Email-ID",
                    style: AppTextTheme.kLabelStyle,
                  ),
                  CustomTextField(
                    controller: email,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffD4E2D4)),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    inputHint: "Enter your Email-Id",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Email is required';
                      }
                      return null;
                    },
                  ),
                  heightSpacer(30),
                  Text(
                    "Password",
                    style: AppTextTheme.kLabelStyle,
                  ),
                  CustomTextField(
                    controller: password,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffD4E2D4)),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    inputHint: "Enter your Password",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password is required';
                      }
                      return null;
                    },
                  ),
                  heightSpacer(30),
                  CustomButton(
                    buttonColor: Colors.white,
                    size: 16,
                    onTap: () {
                      //if (_formKey.currentState!.validate()) {
                      //print("Validation");
                      //}

                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    buttonText: 'Login',
                  ),
                  heightSpacer(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have account?"),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterScreen()));
                        },
                        child: Text(
                          "Register",
                          style: AppTextTheme.kLabelStyle.copyWith(
                              fontSize: 14.sp, color: AppColors.kGreyDk),
                        ),
                      )
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
