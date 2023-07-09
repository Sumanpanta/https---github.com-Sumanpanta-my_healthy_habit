import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class WelcomePage extends StatelessWidget {
const WelcomePage({super.key});


  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                    Container(
              height: screenHeight * 0.35,
              width: screenWidth*0.35,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("img/loginimg.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: screenHeight* 0.18,  ),
                  CircleAvatar(
                    radius:60,
                    backgroundImage: AssetImage(
                      "img/profile2.jpg"
                    ),
                  )
                ],
              ),
            ),
              
              SizedBox(height: screenHeight * 0.1),
              Container(
                width: screenWidth * 0.4,
                height: screenHeight * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage("img/loginbtn.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: screenWidth * 0.07,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.07),
              RichText(
                text: TextSpan(
                  text: "Sign up using:",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
