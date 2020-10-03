import 'package:flutter/material.dart';

class SingleMenuDrawer extends StatelessWidget {
  final String title;
  final Function onTapFunction;

  SingleMenuDrawer({
    this.title,
    this.onTapFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontSize: 20),
        ),
        onTap: onTapFunction,
      ),
    );
  }
}
