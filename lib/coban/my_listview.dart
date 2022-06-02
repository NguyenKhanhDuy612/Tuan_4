import 'package:flutter/material.dart';

List<String> list = ["Thay", "Tuan", "Anh", "Duy", "Tri", "Tam", "Thanh"];


class MyListViewPage extends StatefulWidget {
  const MyListViewPage({Key? key}) : super(key: key);

  @override
  State<MyListViewPage> createState() => _MyListViewPageState();
}

class _MyListViewPageState extends State<MyListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ban Hang"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
                trailing: Icon(Icons.sailing),
                title: Text(list[index]),
                leading: Icon(Icons.account_box_rounded),
                subtitle: Text("Cửa hàng thầy tuấn anh"));
          },
          separatorBuilder: (context, index) => Divider(
            thickness: 2,
          ),
          itemCount: list.length),
    );
  }
}