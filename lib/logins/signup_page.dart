import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    List images = [
      "g.png",
      "t.png",
      "f.png",

    ];
        final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
            backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
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
          
                 Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
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
                  // Row(
                  //   children: [
                  //     Expanded(child: Container()),
                  //     Text(
                  //       "Forgot your Password?",
                  //       style: TextStyle(
                  //         fontSize: screenWidth * 0.03,
                  //         color: Colors.grey,
                  //       ),
                  //     ),
                  //   ],
                  // ),
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
            SizedBox(height:screenWidth*0.07),
            RichText(text: TextSpan(
              text:"Sign up using :",

              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
              
            ),),
            Wrap(
              children: List<Widget>.generate(
                3, 
                (index) {
                  return Padding(
                    padding:const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey,
                      child: CircleAvatar( 
                            radius: 25,
                            backgroundImage: AssetImage(
                              "img/"+images[index]
                            )
                          ,
                      ),
                    ),
                  );
                }
              ),
            ),
          ],
        ),
      ),
      

    );
  }
}