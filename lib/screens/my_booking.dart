import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:omra_firebase/main.dart';

// ignore: camel_case_types
class myBooking extends StatefulWidget {
  const myBooking({super.key});

  @override
  State<myBooking> createState() => _myBookingState();
}

// ignore: camel_case_types
class _myBookingState extends State<myBooking> {
  String qrData = 'Scan my date';

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

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          actions: [
            IconButton(
                onPressed: scanQr,
                icon: const Icon(
                  Icons.qr_code_2,
                  color: Colors.white,
                  size: 40,
                ))
          ],
          title: const Text(
            "حجوزاتي",
            style: TextStyle(
                fontFamily: 'ca1',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: ListView(
            children: const [
              ListTile(
                leading: Icon(Icons.person),
                title: Text('الاسم '),
              ),
              ListTile(
                leading: Icon(Icons.date_range),
                title: Text('تاريخ الحجز'),
              ),
              ListTile(
                leading: Icon(Icons.qr_code),
                title: Text('الكود'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
