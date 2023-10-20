import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GNavOne extends StatefulWidget {
  const GNavOne({super.key});

  @override
  State<GNavOne> createState() => _GNavOneState();
}

class _GNavOneState extends State<GNavOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            gap: 8,
            onTabChange: (index) {
              print(index);
            },
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(icon: Icons.home, text: 'Home'),
              GButton(icon: Icons.favorite_border, text: 'Likes'),
              GButton(icon: Icons.search, text: 'Search'),
              GButton(icon: Icons.settings, text: 'Settings'),
            ],
          ),
        ),
      ),
    );
  }
}
