import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';


class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 163, 194, 224),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children:
            [
              const SizedBox(height:25),

              //logo image
              Padding(padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/images/milkkartlogo.png'),
              ),

              const SizedBox(height:40),

              //gif truck

              Lottie.network(
                'https://lottie.host/88ec5712-f879-41c9-93c3-b5eb95fea7cb/sEziajUWH7.json'
              ),

              //titles
              Text(
                "Order till midnight",
                style: GoogleFonts.poppins(
                  color: Color.fromARGB(255, 32,44,57),
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              //subtitles
              Text(
                "Get your essentials delivered to you by 7 AM",
                style: GoogleFonts.poppins(
                  color: Color.fromARGB(255, 40,56,69),
                  height: 2,

                ),
              ),

            ],
        ),
      ),
    );
  }
}
      