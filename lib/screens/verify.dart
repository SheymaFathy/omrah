import 'package:flutter/material.dart';
import 'package:omra_firebase/main.dart';
// ignore: depend_on_referenced_packages
import 'package:pinput/pinput.dart';

class MyVerify extends StatefulWidget {
  const MyVerify({Key? key}) : super(key: key);

  @override
  State<MyVerify> createState() => _MyVerifyState();
}

class _MyVerifyState extends State<MyVerify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 400,
                height: 200,
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "رمز التحقق من رقم الهاتف",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ca1'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "ادخل رمز التحقق ",
                style: TextStyle(fontSize: 16, fontFamily: 'ca1'),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              Pinput(
                length: 6,
                // defaultPinTheme: defaultPinTheme,
                // focusedPinTheme: focusedPinTheme,
                // submittedPinTheme: submittedPinTheme,

                showCursor: true,
                // ignore: avoid_print
                onCompleted: (pin) => print(pin),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: mainColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: const Text(
                      "تحقق من رقم الهاتف الآن",
                      style: TextStyle(fontFamily: 'ca1', color: Colors.white),
                    )),
              ),
              Row(
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          'phone',
                          (route) => false,
                        );
                      },
                      child: const Text(
                        "تعديل رقم الهاتف ؟",
                        style:
                            TextStyle(color: Colors.black, fontFamily: 'ca1'),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
