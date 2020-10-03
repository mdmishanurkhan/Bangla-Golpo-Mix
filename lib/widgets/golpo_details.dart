import 'package:bangla_golpo/models/golpo_data.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GolpoDetails extends StatelessWidget {
  final GolpoData golpoData = Get.put(GolpoData());
  final String author;
  final String title;
  final String content;

  GolpoDetails({this.author, this.title, this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.restore),
            onPressed: () {
              golpoData.resetEverything();
            },
            tooltip: 'Restore',
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        children: [
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              border: Border.all(width: 1),
            ),
            child: Obx(
              () => Text(
                'লেখক: $author',
                style: TextStyle(
                  fontSize: golpoData.fontSize.toDouble(),
                  fontWeight: golpoData.fontWeight.value,
                ),
              ),
            ),
          ),
          Divider(
            thickness: 3,
          ),
          Obx(
            () => Text(
              'শুরুঃ- ' + content,
              style: TextStyle(
                  fontSize: golpoData.fontSize.toDouble(),
                  fontWeight: golpoData.fontWeight.value),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              border: Border.all(width: 1),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 1,
                  spreadRadius: 1,
                  offset: Offset(1, 2),
                ),
                BoxShadow(
                  blurRadius: 0.1,
                  spreadRadius: 1,
                  offset: Offset(2, 1),
                ),
              ],
            ),
            alignment: Alignment.center,
            child: Text(
              'সমাপ্ত',
              style: TextStyle(fontSize: 22),
            ),
          )
        ],
      ),
      floatingActionButton: FabCircularMenu(
        ringColor: Colors.white,
        children: [
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: () => golpoData.decreaseFontSize(),
            tooltip: 'Decrease Font Size',
          ),
          Obx(
            () => IconButton(
              icon: Icon(
                golpoData.fontWeight.value != FontWeight.bold
                    ? Icons.format_bold
                    : Icons.refresh_rounded,
              ),
              onPressed: () {
                golpoData.changeFontStyle();
              },
              tooltip: 'Make Font Bold',
            ),
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => golpoData.increaseFontSize(),
            tooltip: 'Increase Font Size',
          ),
        ],
      ),
    );
  }
}
