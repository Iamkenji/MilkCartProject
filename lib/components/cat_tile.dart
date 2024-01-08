import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:milkmart/models/cat.dart';


class CatTile extends StatelessWidget {
  final cat cate;
  const CatTile({
    super.key,
    required this.cate,
  }
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
         //border: Border.all(color: Colors.black, width: 3),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(15),
      child: Column(
        children: [
          //images
          Image.asset(
            cate.imagePath,
            height:80,
          ),
          //name
          Text(
            cate.name,
            style: GoogleFonts.poppins(fontSize: 20,),
          ),
        ],
      )
    );
  }
}