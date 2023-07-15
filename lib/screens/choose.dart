import 'package:flutter/material.dart';
import 'package:omra_firebase/main.dart';
import '../widgets/custom_btn.dart';
import 'about_omra.dart';
import 'booking.dart';
import 'my_booking.dart';

class ChooseList extends StatefulWidget {
  const ChooseList({Key? key}) : super(key: key);

  @override
  State<ChooseList> createState() => _ChooseListState();
}

class _ChooseListState extends State<ChooseList> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff257849),
          title: const Text(
            "دليل العمرة",
            style: TextStyle(
                fontFamily: 'ca1',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 15,
                crossAxisCount: 2,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const about_omra()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/aa.jpeg",
                          ),
                          fit: BoxFit.fill,
                          opacity: 200,
                        ),
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'العمرة باختصار',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'ca1',
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: mainColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/mm.jpg",
                          ),
                          fit: BoxFit.fill,
                          opacity: 200,
                        ),
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'المناسك ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'ca1',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: mainColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/bb.jpeg",
                          ),
                          fit: BoxFit.fill,
                          opacity: 200,
                        ),
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'فضل العمرة',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'ca1',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: mainColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/ss.jpg",
                          ),
                          fit: BoxFit.fill,
                          opacity: 200,
                        ),
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'وقت أداء العمرة',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'ca1',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: mainColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 400.0),
              child: CustomBtn(
                  onTapBtn: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BookingScreen()));
                  },
                  btnText: 'احجز الآن'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 470.0),
              child: CustomBtn(
                  onTapBtn: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const myBooking()));
                  },
                  btnText: 'استعلام عن حالة الحجز'),
            ),
          ],
        ),
      ),
    );
  }
}
