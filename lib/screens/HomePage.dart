// ignore: file_names
import 'package:flutter/material.dart';
import '../auth/login.dart';
import '../auth/signup.dart';
import '../widgets/custom_btn.dart';

// ignore: camel_case_types
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 450,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomBtn(
              onTapBtn: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LogIn()));
              },
              btnText: 'تسجيل دخول ',
            ),
            CustomBtn(
              onTapBtn: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignupPage()));
              },
              btnText: "إشترك الآن",
            ),
          ],
        ),
      ),
    );
  }
}
