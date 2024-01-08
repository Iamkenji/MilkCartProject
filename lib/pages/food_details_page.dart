import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:milkmart/components/cart_button.dart';
//import 'package:milkmart/components/my_button.dart';
import 'package:milkmart/models/product.dart';

class FoodDetailsPage extends StatefulWidget {
  final product PRO;
  const FoodDetailsPage({super.key, required this.PRO});

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {

  //quantity
  int quanityCount = 0;

  //decreament 
  void decrementQuantity() {
    setState(() {
      quanityCount--;
    });
  }

  //increament 
  void increamentQuantity() {
    setState(() {
      setState(() {
        quanityCount++;
      });
    });
  }

  //add to cart
  void addToCart() {}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Color.fromARGB(255, 53, 34, 43),
      ),

      body:Column(children: [
        // listview of food details
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ListView(
              children: [
                //image
                Image.asset(
                  widget.PRO.imagePath,
                  height: 200,
                ),

                const SizedBox(height: 10),
                //food name
                Text(
                  widget.PRO.proname,
                  style: GoogleFonts.poppins(fontSize: 28),
                ),

                const SizedBox(height: 25),
          
                //description

                Text(
                  "Description",
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),

                const SizedBox(height: 10),

                Text("Indulge in the exquisite delight of Kashmiri apples, where sweetness meets crispness in every bite. Grown in the pristine Himalayan valleys, these apples are nature's masterpiece, boasting a perfect balance of natural sugars and a satisfying crunch. Savor the unparalleled taste of Kashmiri apples, a delicious testament to the region's unique climate and fertile soil.",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14,
                  height: 2,
                ),
                ),
              ],
            ),
          ),
        ),

        // price + quantity + add to cart button
        Container(
          color: Color.fromARGB(255, 53, 34, 43),
          padding: const EdgeInsets.all(25),
          child: Column(children: [
            //price and quanity
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //price
                Text("" + widget.PRO.price,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                ),

                
                Row(
                  children: [
                    //minus button
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 149,140,147),
                        shape: BoxShape.circle,),
                      child: IconButton(
                        icon: const Icon(Icons.remove,
                        color: Colors.white,
                        ),
                        onPressed: decrementQuantity,
                      ),
                    ),
                    

                    //quantity
                    SizedBox(
                      width: 40,
                      child: Center(
                        child: Text(quanityCount.toString(), style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,),),
                      ),
                    ),


                    //plus button
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 149,140,147),
                        shape: BoxShape.circle,),
                      child: IconButton(
                        icon: const Icon(Icons.add,
                        color: Colors.white,
                        ),
                        onPressed: increamentQuantity,
                      ),
                    ),
                  ],
                )
              ],
            ),

            const SizedBox(height: 25),


            //add to cart button
            CartButton(
              onTap: addToCart),
          ],
          ),
        )

      ],)
    );
  }
}