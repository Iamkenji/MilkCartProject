import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color.fromARGB(255, 255, 252, 252),
      body: SafeArea(
        child: Center(
          child:
            Lottie.network('https://lottie.host/ab424587-2daf-484a-a0e8-23066cb28941/xOIUAmUxGy.json')
        ),
      ),
    );
  }
}








//https://lottie.host/ab424587-2daf-484a-a0e8-23066cb28941/xOIUAmUxGy.json