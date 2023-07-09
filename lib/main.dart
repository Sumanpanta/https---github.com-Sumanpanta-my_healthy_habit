import 'package:flutter/material.dart';
import 'package:my_healthy_habit/home/welcome_page.dart';
import 'package:my_healthy_habit/logins/signup_page.dart';

import 'logins/login_page.dart';
import 'logins/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

       // colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        //useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: WelcomePage(),
    );
  }
}

