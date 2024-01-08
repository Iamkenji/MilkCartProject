import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:milkmart/components/product_tile.dart';
import 'package:milkmart/models/cat.dart';
import 'package:milkmart/models/product.dart';
import 'package:milkmart/pages/food_details_page.dart';
import '../components/cat_tile.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //cat
  List Categ = [
    // Fresh
    cat(
      name: "Fresh", 
    imagePath: 'lib/images/fresh.png',
    ),

    //milk
    cat(name: "Milk", imagePath: 'lib/images/milk.png',
    ),

    //cooking
    cat(name: "Cooking", imagePath: 'lib/images/cooking.png',
    ),

    //breakfest
    cat(name: "Breakfest", imagePath: 'lib/images/breakfest.png',
    ),
  ];


  //product
    List TProduct = [
      //apple
      product(proname: "Apple", imagePath: 'lib/images/apple.png', quantity: "4 pc (600 GM)", price: "₹200",),
      //dhania 
      product(proname: "Dhania", imagePath: 'lib/images/dhaniya.png', quantity: "100 GM", price: "₹28",),
      //cauliflower
      product(proname: "Cauliflower", imagePath: 'lib/images/cauliflower.png', quantity: "1 pc (500 GM)", price: "₹48",),
    ];


    //navigate to food detials
          void navigateToFoodDetails(int index) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => FoodDetailsPage(
              PRO: TProduct[index],
            ),
            ),
            );
          }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Color.fromARGB(255, 53, 34, 43),
        ),
        title: Row(
            
            children: [
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Image.asset('lib/images/milkkartlogo2.png',
                fit: BoxFit.contain,
                height:35),
              ),
            ],
          ), 
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          //search barw

          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 149,140,147),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                  ),
                ),
             ),
          ),
          //promo box
          Container(
            decoration: BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.circular(20)
            ),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.all(35),
            child: Row(
              children: [
                Row(children: [
                  Image.asset('lib/images/promo.png',
                  fit: BoxFit.contain,
                  height:180),
                ],
                )

            ],)
          ),

          //category

          const Padding(
            padding: EdgeInsets.only(left: 35.0),
            child: Text(
              "Explore Categories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 53, 34, 43),
                fontSize: 23,
              ),

            ),
          ),

          //popluar category

          

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ListView.builder(scrollDirection: Axis.horizontal,
                itemCount: Categ.length,
                itemBuilder: (context, index) => CatTile(
                  cate: Categ[index],
                ),
              ),
            ),
          ),

          


          const Padding(
            padding: EdgeInsets.only(left: 35),
            child: Text(
              "Trending Products",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 53, 34, 43),
                fontSize: 23,
              ),

            ),
          ),


          const SizedBox(height: 5),

          //trending items
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(scrollDirection: Axis.horizontal,
                itemCount: TProduct.length,
                itemBuilder: (context, index) => ProductTile(
                  PRO: TProduct[index],
                  onTap: () => navigateToFoodDetails(index) ,
                ),
              ),
            ),
          ),

        


          
        ],
        ),
    );
    
  }
}