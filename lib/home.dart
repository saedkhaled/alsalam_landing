import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:Row(
        children: <Widget>[
          Container(height: 200,
          child: Image.asset('assets/images/logo.png'),),

        ],
      ),
    );
  }
}