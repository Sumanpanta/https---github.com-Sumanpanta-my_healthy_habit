import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_healthy_habit/logins/signup_page.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return  Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screenHeight * 0.35,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("img/loginimg.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello",
                    style: TextStyle(
                      fontSize: screenWidth * 0.1,
                      //color: Colors.lightGreen,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Sign in to your account",
                    style: TextStyle(
                      fontSize: screenWidth * 0.03,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.05),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                            hintText: "your email here",
                        prefixIcon: Icon(Icons.email,
                         color: Colors.lightGreen,
                         ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.lightGreen,
                            width: 1.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.lightGreen,
                            width: 1.0,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                         hintText: "your password here",
                        prefixIcon: Icon(Icons.password,
                         color: Colors.lightGreen,
                         ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.lightGreen,
                            width: 1.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.lightGreen,
                            width: 1.0,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(child: Container()),
                      Text(
                        "Forgot your Password?",
                        style: TextStyle(
                          fontSize: screenWidth * 0.03,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
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
                  "Sign in",
                  style: TextStyle(
                    fontSize: screenWidth * 0.07,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height:screenWidth*0.07),
            RichText(text: TextSpan(
              text:"Don\'t have an account?",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20
              ),
              children: [
                TextSpan(
                  text: "Create",
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>SignUpPage()),
                )
              ]
            ))
          ],
        ),
      ),
    );
  }
}
