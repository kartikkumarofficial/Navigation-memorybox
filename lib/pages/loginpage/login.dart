import 'package:flutter/material.dart';
import 'package:memorybox2/pages/progesstracker.dart';
import 'package:google_fonts/google_fonts.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;
    double horizontalpadding = srcwidth * 0.05;
    double verticalpadding = srcheight * 0.05;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 203, 158, 251),
              Color.fromARGB(255, 117, 104, 240),
            ],
            begin: Alignment.topLeft,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Image.asset(
                'assets/images/login.png',
                height: srcwidth * 0.78,
                width: srcwidth * 0.9,
              ),
              Container(
                height: srcheight * 0.5,
                width: srcwidth * 0.75,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 203, 158, 251),
                      Color.fromARGB(255, 117, 104, 240),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text(
                          'Log in',
                          style: TextStyle(
                            fontSize: srcwidth * 0.1,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25, bottom: 20),
                        child: Text(
                          'Glad to have your back',
                          style: TextStyle(
                            fontSize: srcwidth * 0.035,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Container(
                      width: srcwidth * 0.64,
                      height: srcheight * 0.055,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 205, 184, 251),
                          // labelText: 'Password',
                          hintText: 'Enter your name here',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                        width: srcwidth * 0.64,
                        height: srcheight * 0.055,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 205, 184, 251),
                            // labelText: 'Password',
                            hintText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
