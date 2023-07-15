import 'package:flutter/material.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  List<String> otp = List.generate(4, (index) => '');
  late FocusNode focusNode1, focusNode2, focusNode3, focusNode4;

  @override
  void initState() {
    super.initState();
    focusNode1 = FocusNode();
    focusNode2 = FocusNode();
    focusNode3 = FocusNode();
    focusNode4 = FocusNode();
  }

  @override
  void dispose() {
    focusNode1.dispose();
    focusNode2.dispose();
    focusNode3.dispose();
    focusNode4.dispose();
    super.dispose();
  }

  void nextField({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  void previousField({required String value, required FocusNode focusNode}) {
    if (value.isEmpty) {
      focusNode.previousFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP Screen'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OTPTextField(
                  focusNode: focusNode1,
                  onChanged: (value) {
                    otp[0] = value;
                    nextField(value: value, focusNode: focusNode2);
                  },
                  onBackspace: (value) {},
                ),
                OTPTextField(
                  focusNode: focusNode2,
                  onChanged: (value) {
                    otp[1] = value;
                    nextField(value: value, focusNode: focusNode3);
                    previousField(value: value, focusNode: focusNode1);
                  },
                  onBackspace: (value) {
                    previousField(value: value, focusNode: focusNode1);
                  },
                ),
                OTPTextField(
                  focusNode: focusNode3,
                  onChanged: (value) {
                    otp[2] = value;
                    nextField(value: value, focusNode: focusNode4);
                    previousField(value: value, focusNode: focusNode2);
                  },
                  onBackspace: (value) {
                    previousField(value: value, focusNode: focusNode2);
                  },
                ),
                OTPTextField(
                  focusNode: focusNode4,
                  onChanged: (value) {
                    otp[3] = value;
                    previousField(value: value, focusNode: focusNode3);
                  },
                  onBackspace: (value) {
                    previousField(value: value, focusNode: focusNode3);
                  },
                ),
              ],
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Verify OTP logic goes here
                String enteredOTP = otp.join('');
                // ignore: avoid_print
                print('Entered OTP: $enteredOTP');
              },
              child: const Text('Verify OTP'),
            ),
          ],
        ),
      ),
    );
  }
}

class OTPTextField extends StatelessWidget {
  final FocusNode focusNode;
  final ValueChanged<String> onChanged;
  final ValueChanged<String> onBackspace;

  const OTPTextField({
    Key? key,
    required this.focusNode,
    required this.onChanged,
    required this.onBackspace,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        autofocus: true,
        focusNode: focusNode,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 20),
        onChanged: onChanged,
        onSubmitted: (value) {},
        // onBackspace: () {
        //   onBackspace('');
        // },
        maxLength: 1,
        decoration: const InputDecoration(
          counterText: '',
          border: InputBorder.none,
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: OTPScreen(),
  ));
}
