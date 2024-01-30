import 'package:flutter/material.dart';
import 'package:milkmart/components/my_drawer.dart';
import 'package:milkmart/components/cat_tile.dart';


class CatPage extends StatelessWidget {
  const CatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Color.fromARGB(255, 63, 38, 38),
        title: const Text("Category"),
      ),
      drawer: const MyDrawer(),
      backgroundColor: Colors.white,


      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: ListView.builder(scrollDirection: Axis.horizontal,
                itemCount: Categ.length,
                itemBuilder: (context, index) => CatTile(
                  cate: Categ[index],
                ),
              ),
            ),
          ),

        ]

      ),
    );
  }
}