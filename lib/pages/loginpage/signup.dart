
import 'package:flutter/material.dart';
import 'package:memorybox2/appui/home.dart';
import 'package:memorybox2/pages/intropage.dart';
import 'login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memorybox2/appui/home.dart';
import 'package:memorybox2/appui/home.dart';

class signuppage extends StatelessWidget {
  const signuppage({super.key});

  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;
    double horizontalpadding = srcwidth * 0.05;
    double verticalpadding = srcheight * 0.05;
    TextEditingController nameController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 203, 158, 251),
              Color.fromARGB(255, 117, 104, 240),
            ],
            begin: Alignment.topCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/hey.png',
                  height: srcwidth * 0.7,
                  width: srcwidth * 0.9,
                ),
                Card(
                  elevation: 10,
                  child: Container(
                    height: srcheight * 0.6,
                    width: srcwidth * 0.85,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 203, 158, 251),
                          Color.fromARGB(255, 117, 104, 240),
                        ],
                        begin: Alignment.topCenter,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25, top: 8),
                            child: Text(
                              'Create Your Account',
                              style: TextStyle(
                                fontSize: srcwidth * 0.08,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            width: srcwidth * 0.64,
                            height: srcheight * 0.053,
                            child: TextField(
                              controller: nameController,
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () {
                                  },
                                  icon: Icon(Icons.person),
                                  iconSize: 30,
                                ),
                                filled: true,
                                fillColor: Color.fromARGB(255, 205, 184, 251),
                                hintText: 'Name',
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            width: srcwidth * 0.64,
                            height: srcheight * 0.053,
                            child: TextField(
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.email),
                                  iconSize: 30,
                                ),
                                filled: true,
                                fillColor: Color.fromARGB(255, 205, 184, 251),
                                hintText: 'Email',
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            width: srcwidth * 0.64,
                            height: srcheight * 0.053,
                            child: TextField(
                              obscureText: true,
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.visibility_off),
                                  iconSize: 30,
                                ),
                                filled: true,
                                fillColor: Color.fromARGB(255, 205, 184, 251),
                                hintText: 'Password',
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            width: srcwidth * 0.64,
                            height: srcheight * 0.053,
                            child: TextField(
                              obscureText: true,
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 205, 184, 251),
                                hintText: 'Confirm Password',
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: SizedBox(
                            width: srcwidth * 0.64,
                            height: srcheight * 0.05,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => welcomepage(name: nameController.text,)),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 69, 44, 130),
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(26),
                                ),
                                textStyle: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: srcheight * 0.02,
                                  ),
                                ),
                              ),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    // color: Colors.red,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 38, right: 40),
                          child: Row(
                            children: [
                              Text(
                                "Already have an account ?      ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => loginpage()),
                                  );
                                },
                                child: Text(
                                  'Log in',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 72, 46, 153)),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 20, left: 45, right: 44),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    thickness: 2,
                                    endIndent: 10,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  'Or Sign in with',
                                  style: TextStyle(
                                      fontSize: srcwidth * 0.04,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                                Expanded(
                                  child: Divider(
                                      color: Colors.black,
                                      thickness: 2,
                                      indent: 10
                                  ),
                                ),
                              ],
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 9),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white),
                            width: srcwidth * 0.66,
                            height: srcheight * 0.055,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Image.asset(
                                    'assets/images/google.png',
                                    height: srcwidth * 0.07,
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Text(
                                    'Sign Up With Gmail',
                                    style: TextStyle(
                                      fontSize: srcwidth * 0.04,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
