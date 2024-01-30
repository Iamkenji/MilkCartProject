import 'package:flutter/material.dart';
import 'package:milkmart/components/my_drawer.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Color.fromARGB(255, 63, 38, 38),
        title: const Text("Wallet"),
      ),
      drawer: const MyDrawer(),
      backgroundColor: Colors.white,
      );
  }
}