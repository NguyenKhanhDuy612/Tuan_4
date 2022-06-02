import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myasset_image extends StatefulWidget {
  const Myasset_image ({Key? key}) : super(key: key);

  @override
  State<Myasset_image> createState() => Myasset_image_State();
}

class Myasset_image_State extends State<Myasset_image> {
  final urlImages = [
    'asset/anh/1.jpg',
    'asset/anh/2.jpg',
    'asset/anh/3.jpg',
    'asset/anh/4.jpg',
    'asset/anh/5.jpg'
  ];
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter >= urlImages.length) {
        _counter = 0;
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter <= 0) {
        _counter = urlImages.length;
      }
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bai 2 Chuyển ảnh"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                urlImages[_counter],
                  // width: 100,
                  // height: 500,
                  // fit: BoxFit.fill
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    ),
                    onPressed: _decrementCounter,
                    child: Icon(Icons.arrow_back, size: 32),
                  ),
                  SizedBox(width: 32),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    ),
                    onPressed: _incrementCounter,
                    child: Icon(Icons.arrow_forward, size: 32),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}