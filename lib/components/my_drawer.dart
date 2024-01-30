import 'package:flutter/material.dart';
import 'package:milkmart/pages/cat_page.dart';
import 'package:milkmart/pages/main_page.dart';
import 'package:milkmart/pages/my_list_tile.dart';
import 'package:milkmart/pages/order_page.dart';
import 'package:milkmart/pages/profile_page.dart';
import 'package:milkmart/pages/wallet_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 133, 133, 133),
      child:  Column(
        children: [
          //drawer header: logo
          DrawerHeader(
            child: Center(
              child: Image.asset('lib/images/milkkartlogo.png'
              ),
            ), 
          ),

          const SizedBox(height: 25),

          //home title
          MyListTile(
            text: "Home", 
            icon: Icons.home, 
            onTap: () {
              //pop drawer first
              Navigator.pop(context);

              //go to home page
              Navigator.push(context, 
              MaterialPageRoute(builder: (context){
                return const MainPage();
              },
              ),
              );
            },
            ),

          //cat title
          MyListTile(
            text: "Category", 
            icon: Icons.shopping_cart, 
            onTap: () {
              //pop drawer first
              Navigator.pop(context);

              //go to cat page
              Navigator.push(context, 
              MaterialPageRoute(builder: (context){
                return const CatPage();
              },
              ),
              );
            },
            ),

          //order title
          MyListTile(
            text: "Next Order", 
            icon: Icons.shopping_bag, 
            onTap: () {
              //pop drawer first
              Navigator.pop(context);

              //go to cat page
              Navigator.push(context, 
              MaterialPageRoute(builder: (context){
                return const OrderPage();
              },
              ),
              );
            },
            ),

          //wallet title
          MyListTile(
            text: "Wallet", 
            icon: Icons.wallet, 
            onTap: () {
              //pop drawer first
              Navigator.pop(context);

              //go to cat page
              Navigator.push(context, 
              MaterialPageRoute(builder: (context){
                return const WalletPage();
              },
              ),
              );
            },
            ),

          //user title
          MyListTile(
            text: "Profile", 
            icon: Icons.verified_user, 
            onTap: () {
              //pop drawer first
              Navigator.pop(context);

              //go to cat page
              Navigator.push(context, 
              MaterialPageRoute(builder: (context){
                return const ProfilePage();
              },
              ),
              );
            },
            ),

        ],        
      ),
    );
  }
}