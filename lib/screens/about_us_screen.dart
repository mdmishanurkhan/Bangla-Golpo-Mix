import 'package:bangla_golpo/widgets/app_drawer.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  static const screenName = '/about-us';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        centerTitle: true,
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Column(
          children: [
            Container(),
            Column(
              children: [
                Text(
                  'Developed by Mishanur Khan',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 100,
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                Text(
                  'Company name: MproIT',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Version: 1.0.0',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Build Date: 03/10/2020',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              width: 100,
              child: Divider(
                thickness: 2,
              ),
            ),
            Text('2020 \u00a9 MproIT'),
          ],
        ),
      ),
    );
  }
}
