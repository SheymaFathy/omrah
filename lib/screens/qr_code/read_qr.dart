import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import '../../main.dart';
import '../../widgets/custom_btn.dart';

// ignore: camel_case_types
class readQrCode extends StatefulWidget {
  const readQrCode({super.key});

  @override
  State<readQrCode> createState() => _readQrCodeState();
}

// ignore: camel_case_types
class _readQrCodeState extends State<readQrCode> {
  String qrData = 'Scan my date';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                qrData,
                style: TextStyle(
                  color: textColor,
                  fontFamily: 'ca1',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomBtn(onTapBtn: scanQr, btnText: "Scanner")
            ],
          ),
        ),
      ),
    );
  }

  Future<void> scanQr() async {
    try {
      FlutterBarcodeScanner.scanBarcode('#c79d64', 'اغلاق', true, ScanMode.QR)
          .then((value) {
        setState(() {
          qrData = value;
        });
      });
    } catch (e) {
      setState(() {
        qrData = 'Unable to read this';
      });
    }
  }
}
