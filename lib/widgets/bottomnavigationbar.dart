import 'package:flutter/material.dart';

class bottomnavbar extends StatelessWidget {
  const bottomnavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child:BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home')
        ]),
      ),
    );
  }
}
