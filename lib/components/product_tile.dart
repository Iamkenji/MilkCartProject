import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:milkmart/models/product.dart';


class ProductTile extends StatelessWidget {
  final product PRO;
  final void Function()? onTap;
  const ProductTile({
    super.key,
    required this.PRO,
    required this.onTap,
  }
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 231,220,217),
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.all(15),
        //padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 10),
            //images
            Image.asset(
              PRO.imagePath,
              height:80,
            ),
            const SizedBox(height: 10),
            //name
            Text(
              PRO.proname,
              style: GoogleFonts.poppins(
                fontSize: 20),
            ),
            //quantity
            Text(
              PRO.quantity,
              style:GoogleFonts.poppins(
                fontSize:15,
                color: Colors.grey[700],
                ),
            ),
            //price
            Text(
              PRO.price,
              style: GoogleFonts.poppins(
                fontSize: 15,
                color: Colors.grey[700],),
            ),
          ],
        )
      ),
    );
  }
}