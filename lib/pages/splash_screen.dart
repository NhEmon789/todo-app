import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'homepage.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds:3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
    });
  }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsetsGeometry.only(top:200),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              Lottie.asset("assets/loading.json"),
              Text("To Do App",style: TextStyle(fontSize: 30,color: Colors.blue,fontWeight:FontWeight.bold ),)
            ]
          )
        ),
    );
  }
}
