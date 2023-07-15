// ignore: depend_on_referenced_packages
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:omra_firebase/main.dart';

// ignore: camel_case_types
class createQrCode extends StatefulWidget {
  const createQrCode({super.key});

  @override
  State<createQrCode> createState() => _createQrCodeState();
}

// ignore: camel_case_types
class _createQrCodeState extends State<createQrCode> {
  String qrData = 'AddQrCode';
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: mainColor,
            title: const Text(
              "الماسح الضوئي",
              style: TextStyle(
                  fontFamily: 'ca1',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BarcodeWidget(
                    data: qrData,
                    barcode: Barcode.qrCode(),
                    color: Colors.black,
                    width: 200,
                    height: 200,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: MediaQuery.of(context).size.width * .8,
                    child: TextField(
                      onChanged: (val) {
                        setState(() {
                          qrData = val;
                        });
                      },
                      decoration: const InputDecoration(
                        hintText: 'ادخل بياناتك هنا',
                        labelText: 'ادخل بياناتك هنا',
                        labelStyle: TextStyle(fontFamily: 'ca1'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
