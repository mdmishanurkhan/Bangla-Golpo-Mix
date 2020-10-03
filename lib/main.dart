import 'package:bangla_golpo/screens/about_us_screen.dart';
import 'package:bangla_golpo/screens/home_screen.dart';
import 'package:bangla_golpo/screens/sources_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'বাংলা গল্প মিক্স',
      theme: ThemeData(
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        HomeScreen.screenName: (context) => HomeScreen(),
        AboutUs.screenName: (context) => AboutUs(),
        SourceScreen.screenName: (context) => SourceScreen(),
      },
    );
  }
}
