import 'package:bangla_golpo/models/golpo_data.dart';
import 'package:bangla_golpo/widgets/app_drawer.dart';
import 'package:bangla_golpo/widgets/golpo_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share/share.dart';

class HomeScreen extends StatelessWidget {
  static const screenName = '/';

  final golpodata = Get.put(GolpoData());

  String indexNumber(int index) {
    if (index <= 9) {
      return '0$index';
    } else {
      return index.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('বাংলা গল্প মিক্স'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () => Share.share('Check this bangla golpo app '),
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: golpodata.golpos.length,
        itemBuilder: (context, index) {
          var golpos = golpodata.golpos[index];

          return Card(
            child: ListTile(
              leading: Text(
                indexNumber(index + 1).toString(),
                style: TextStyle(fontSize: 20),
              ),
              title: Text(
                golpos.title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GolpoDetails(
                    author: golpos.author,
                    title: golpos.title,
                    content: golpos.content,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
