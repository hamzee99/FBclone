import 'package:clone/login.dart';
import 'package:clone/routes.dart';
import 'package:clone/signup.dart';
import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
        //initialRoute: '/',
      home: Login_Page(),
      routes: {
        MyRoutes.homeRoute: (context) => Home_Page(),
        MyRoutes.signupRoute: (context)=> Signup(),
        MyRoutes.loginRoute: (context)=> Login_Page()
      },
    );
  }
}

