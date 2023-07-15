import 'package:flutter/material.dart';
import '../main.dart';
import '../widgets/custom_textFeild.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  late DateTime date = DateTime.now();
  void getDatePicker() {
    showDatePicker(
            context: context,
            initialDate: date,
            firstDate: DateTime(2023),
            lastDate: DateTime(2024))
        .then((value) {
      setState(() {
        date = value!;
      });
    });
  }

  TextEditingController fullName = TextEditingController();
  TextEditingController passportNo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: mainColor,
            title: const Text(
              "صفحة الحجز",
              style: TextStyle(
                  fontFamily: 'ca1',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    customTextFormFeild(
                        controller: fullName,
                        type: TextInputType.text,
                        validate: (value) {
                          if (value.isEmpty) {
                            return ' الرجاء كتابة الإسم الأول';
                          }
                        },
                        label: 'الإسم بالكامل',
                        prefix: Icons.person),
                    const SizedBox(
                      height: 20,
                    ),
                    customTextFormFeild(
                        controller: passportNo,
                        type: TextInputType.number,
                        validate: (value) {
                          if (value.isEmpty) {
                            return ' الرجاء كتابة رقم جواز السفر';
                          }
                        },
                        label: 'رقم جواز السفر ',
                        prefix: Icons.airplanemode_on),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'تاريخ الحجز',
                      style: TextStyle(
                          fontFamily: 'ca1',
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: mainColor),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: const Icon(
                                  Icons.date_range,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  getDatePicker();
                                },
                              ),
                              Text(
                                '${date.day} - ${date.month} - ${date.year} ',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
