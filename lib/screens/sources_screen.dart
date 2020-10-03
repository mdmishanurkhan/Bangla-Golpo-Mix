import 'package:bangla_golpo/widgets/app_drawer.dart';
import 'package:flutter/material.dart';

class SourceScreen extends StatelessWidget {
  static const screenName = '/sources';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Credit/Sources'),
        centerTitle: true,
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Column(
          children: [
            Container(),
            Text(
              'Mainly story taken from:- ',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 100,
              child: Divider(
                thickness: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '1. Google.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '2. Websites, like golpokolpo & another sites.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '3. Apps, like rupkothar golpo and some more.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '4. Custom 🤞.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
