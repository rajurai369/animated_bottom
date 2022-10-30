import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}



class _HomeViewState extends State<HomeView> {
  int index = 2;
  @override
  Widget build(BuildContext context) {
    final items = [
      const Icon(Icons.home, size: 30),
      const Icon(Icons.search, size: 30),
      const Icon(Icons.favorite, size: 30),
      const Icon(Icons.settings, size: 30),
      const Icon(Icons.person, size: 30),
    ];
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text("Animated Bottom Bar"),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          '$index',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 120,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(iconTheme: const IconThemeData(color: Colors.white)),
        child: CurvedNavigationBar(
          animationCurve: Curves.easeInOut,
          // animationDuration: Duration(milliseconds: 300),
          color: Colors.blue,
          buttonBackgroundColor: Colors.purple,
          backgroundColor: Colors.transparent,
          height: 60,
          items: items,
          index: index,
          onTap: (index) => setState(() => this.index = index),
        ),
      ),
    );
  }
}
