import 'package:flutter/material.dart';
import 'package:milkmart/components/my_drawer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Color.fromARGB(255, 63, 38, 38),
        title: const Text("Profile"),
      ),
      drawer: const MyDrawer(),
      backgroundColor: Colors.white,
      );
  }
}