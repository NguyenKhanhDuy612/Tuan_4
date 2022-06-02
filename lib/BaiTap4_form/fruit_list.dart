import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ListFruit.dart';

class MyListFruit extends StatelessWidget {
  const MyListFruit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Danh sách trái cây"),
      ),
      body: GridView.extent(
          padding: EdgeInsets.only(top: 10, bottom: 10, left: 5, right:5),
          maxCrossAxisExtent: 250,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.8,
          children: DSFruit.map((sp) => Card(elevation: 1,
            shadowColor: Colors.blue,
            child: Column(
              children: [
                Image.network(sp.url,
                height: 160,
                  fit: BoxFit.fitHeight
                ),
                Text("${sp.ten}"),
                Text("Giá: ${sp.gia}/kg",
                  style: TextStyle(color: Colors.red),),
              ],
            ),
          )).toList()
      ),
    );
  }
}
