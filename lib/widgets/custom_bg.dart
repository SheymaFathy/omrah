import 'package:flutter/cupertino.dart';

class AppBackGround extends StatelessWidget {
  const AppBackGround({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/mm.jpg",
              ),
              fit: BoxFit.cover)),
    );
  }
}