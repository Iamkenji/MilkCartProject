import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';


class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 212, 210),
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
                'https://lottie.host/6018bedc-8626-4374-a83b-ee116ef0a91e/Vi2pHH03u9.json'
              ),

              //titles
              Text(
                "Seemless Ordering!",
                style: GoogleFonts.poppins(
                  color: Color.fromARGB(255, 32,44,57),
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              //subtitles
              Text(
                "Simply Add items throughout the day & ",
                style: GoogleFonts.poppins(
                  color: Color.fromARGB(255, 40,56,69),
                  height: 2,

                ),
              ),

              Text(
                "receive it the next morning",
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
      //receive it the next morning