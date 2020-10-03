import 'package:bangla_golpo/screens/about_us_screen.dart';
import 'package:bangla_golpo/screens/home_screen.dart';
import 'package:bangla_golpo/screens/sources_screen.dart';
import 'package:bangla_golpo/widgets/single_menu_drawer.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            width: double.infinity,
            padding: EdgeInsets.only(left: 18),
            height: 100,
            child: Text(
              'Quick Access',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleMenuDrawer(
            title: 'Home',
            onTapFunction: () =>
                Navigator.pushReplacementNamed(context, HomeScreen.screenName),
          ),
          SingleMenuDrawer(
            title: 'Credit/Souces',
            onTapFunction: () => Navigator.pushReplacementNamed(
                context, SourceScreen.screenName),
          ),
          SingleMenuDrawer(
            title: 'About Us',
            onTapFunction: () =>
                Navigator.pushReplacementNamed(context, AboutUs.screenName),
          ),
        ],
      ),
    );
  }
}
