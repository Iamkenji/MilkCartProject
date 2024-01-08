import 'package:flutter/material.dart';
import 'package:milkmart/intro_screens/intro_page_1.dart';
import 'package:milkmart/intro_screens/intro_page_2.dart';
import 'package:milkmart/pages/auth_page.dart';
//import 'package:milkmart/pages/login_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {


  //controller to keep track of which page were on
  PageController _controller = PageController();

  //last page or not
  bool onLastPage = false;


  @override
  Widget build(BuildContext constext) {
    return Scaffold(
      body: Stack(
        children: [
          //page view
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 1);
              });
            },
            children: [
              IntroPage1(),
              IntroPage2(),
            ],
         
         ),


      


       //dot indicators
       Container(
        alignment: Alignment(0,0.75),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [


            //skip
            GestureDetector(
              onTap: () {
                _controller.jumpToPage(1);
              },
              child: Text(
                'Skip',
              style: TextStyle(
              color: Color.fromARGB(255, 53, 34, 43),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            ),
            ),

            // dot indicator
            SmoothPageIndicator(controller: _controller, count: 2),

            //next or done
            onLastPage ?
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                 MaterialPageRoute(builder: (context) {
                  return AuthPage();
                 },
                 ),
                 );
              },
              child: Text(
                'Done',
              style: TextStyle(
              color: Color.fromARGB(255, 53, 34, 43),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            ),
            )
            : GestureDetector(
              onTap: () {
                _controller.nextPage(duration: Duration(milliseconds: 500), 
                curve: Curves.easeIn,
                );
              },
              child: Text(
                'Next',
              style: TextStyle(
              color: Color.fromARGB(255, 53, 34, 43),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            ),
            ),
          ],
        )
        ),
        ],
      )
    );
  }
}