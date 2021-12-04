import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:"This is a title",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("This is home page bar")
        ),
        body: const Center(
          child: Text("Child of body"),
        )
      ),
    );
  }
}