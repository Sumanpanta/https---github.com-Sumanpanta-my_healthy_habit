import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children:[
          Container(

            width:w,
            height: h*0.3,
            decoration: const BoxDecoration(
             image: DecorationImage(
              image: AssetImage(
                "img/loginimg.jpg"
              ),
             ), 
            ),


          ),
          Container (
         child: const  Column(children: [
              Text("Hello", style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold
              )
              )
            ]),
          )
        ]

      )

    );
  }
}