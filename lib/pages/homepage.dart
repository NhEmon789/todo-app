import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("To Do App"),
      backgroundColor: Colors.blue,
      toolbarHeight: 80,
      centerTitle: true,),
      body: Center(),
    );
  }
}