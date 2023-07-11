// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:my_healthy_habit/homeUI/welcome_page.dart';
import 'package:my_healthy_habit/logins/signup_page.dart';
import 'package:my_healthy_habit/homeUI/profile_screen.dart';
import 'package:get/get.dart';
import 'logins/login_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

       // colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        //useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

