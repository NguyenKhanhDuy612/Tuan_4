import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tuan_4/provider_vidu/counter_page.dart';

import 'my_provider.dart';

class MyProviderApp extends StatelessWidget {
  const MyProviderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Counter(),
      child: const MaterialApp(
        title: "Provider App Demo",
        home: const CounterPage(),
      ),
    );
  }
}
