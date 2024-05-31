import 'package:flutter/material.dart';
import 'package:hostelmanagementapp/features/auth/screens/login_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      useInheritedMediaQuery: true,
      splitScreenMode: true,
      designSize: Size(375, 825),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: LoginScreen(),
      ),
    );
  }
}
