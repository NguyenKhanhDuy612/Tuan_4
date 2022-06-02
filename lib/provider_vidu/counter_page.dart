import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tuan_4/provider_vidu/my_provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<Counter>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Số lần bạn đã bấm trên button"),
            FutureBuilder<int>(
              initialData: 0,
                future: counter.getValue(),
                builder: (context, snapshot){
                  return Text("${snapshot.data}", style: TextStyle(fontSize: 40),);

                })
            // Consumer<Counter>(builder:(context, counter, child) {
            //   return Text("${counter.value}", style: TextStyle(fontSize: 50),);
            // },)// lấy couter mình
          ],
        ),
      ),

      floatingActionButton: Column(
        children: [
          IconButton(
            icon: Icon(Icons.add_circle, size: 50,color: Colors.blue,),
            onPressed: (){
              var provider = context.read<Counter>();
                  provider.increment();
            },
          ),
          IconButton(
            icon: Icon(Icons.add_circle, size: 50,color: Colors.blue,),
            onPressed: (){
              var provider = context.read<Counter>();
              provider.increment();
            },
          ),
        ],
      ),

    );
  }
}
