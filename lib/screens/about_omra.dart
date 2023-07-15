import 'package:flutter/material.dart';

import '../main.dart';

// ignore: camel_case_types
class about_omra extends StatelessWidget {
  const about_omra({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          title: const Text(
            " العمرة باختصار",
            style: TextStyle(
                fontFamily: 'ca1',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  'ماهي العمرة؟',
                  style: TextStyle(
                      fontFamily: 'ca1',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: mainColor),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  'العمرة هي التعبد لله بالإحرام، والطواف بالبيت، والسعي بين الصفا والمروة، والحلق أو التقصير؟',
                  style: TextStyle(
                      fontFamily: 'ca1',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: textColor),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  'كيف أُحرِم؟',
                  style: TextStyle(
                      fontFamily: 'ca1',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: mainColor),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  'يُحرم المسلمُ من المكان المحدد له شرعاً، ويمتنع عن المحظورات التي يمنع منها حال إحرامه ثم يلبي قائلا ً: "لبيك اللهم لبيك، لبيك لا شريك لك لبيك، إن الحمد والنعمة لك والملك، لا شريك لك',
                  style: TextStyle(
                      fontFamily: 'ca1',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: textColor),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  'أركان وخطوات العمرة:',
                  style: TextStyle(
                      fontFamily: 'ca1',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: mainColor),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
              child: SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: mainColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'الإحرام',
                      style: TextStyle(
                          fontFamily: 'ca1',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: mainColor),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: mainColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'الطواف',
                      style: TextStyle(
                          fontFamily: 'ca1',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: mainColor),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
              child: SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: mainColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'السعي',
                      style: TextStyle(
                          fontFamily: 'ca1',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: mainColor),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  'أما الإحرام، وهو النية للدخول في النسك مقروناً بأعمال الحج أو العمرة، فيتم عند الوصول إلى المواقيت، وهي أماكن حددها النبي محمد صلى الله عليه وسلم لمن أراد أداء فريضة الحج أو العمرة:',
                  style: TextStyle(
                      fontFamily: 'ca1',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: textColor),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
              child: SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: mainColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'ذا الحليفة',
                      style: TextStyle(
                          fontFamily: 'ca1',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: mainColor),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  ' تسمى الآن آبار علي وهي أبعد المواقيت عن مكة، وهي الميقات المخصص لأهل المدينة المنورة، وكل من أتى عليها من غير أهلها',
                  style: TextStyle(
                      fontFamily: 'ca1',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: textColor),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
              child: SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: mainColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'الجحفة ',
                      style: TextStyle(
                          fontFamily: 'ca1',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: mainColor),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  ' وهي ميقات أهل الشام ومصر والسودان وكل دول المغرب العربي ومن كان وراء ذلك.',
                  style: TextStyle(
                      fontFamily: 'ca1',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: textColor),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
              child: SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: mainColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'قرن المنازل ',
                      style: TextStyle(
                          fontFamily: 'ca1',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: mainColor),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  ' يسمى أيضاً ميقات السيل الكبير، وهو الميقات المخصص لأهل نجد، ودول الخليج العربي وما ورائهم.',
                  style: TextStyle(
                      fontFamily: 'ca1',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: textColor),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
              child: SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: mainColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'يلملم  ',
                      style: TextStyle(
                          fontFamily: 'ca1',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: mainColor),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  ' وهو ميقات أهل اليمن، وكل من يمر من ذلك الطريق، وسمي الميقات بهذا الاسم نسبة لجبل يلملم.',
                  style: TextStyle(
                      fontFamily: 'ca1',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: textColor),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
              child: SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: mainColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'ذات عرق  ',
                      style: TextStyle(
                          fontFamily: 'ca1',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: mainColor),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  ' هو ميقات أهل العراق وما ورائها.',
                  style: TextStyle(
                      fontFamily: 'ca1',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: textColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
