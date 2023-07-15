import 'package:flutter/material.dart';
import 'package:omra_firebase/main.dart';
import 'package:omra_firebase/screens/verify.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({Key? key}) : super(key: key);

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  TextEditingController countryController = TextEditingController();

  @override
  void initState() {
    countryController.text = "+2";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 400,
                  height: 200,
                ),
                const Text(
                  "التحقق من رقم الهاتف",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ca1'),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "نحتاج إلى تسجيل هاتفك",
                  style: TextStyle(fontSize: 16, fontFamily: 'ca1'),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 40,
                        child: TextField(
                          controller: countryController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const Text(
                        "|",
                        style: TextStyle(fontSize: 33, color: Colors.grey),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Expanded(
                          child: TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "رقم الهاتف",
                            hintStyle: TextStyle(fontFamily: 'ca1')),
                      ))
                    ],
                  ),
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyVerify()));
                      },
                      child: const Text(
                        "ارسل الكود",
                        style:
                            TextStyle(fontFamily: 'ca1', color: Colors.white),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
