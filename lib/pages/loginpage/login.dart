import 'package:flutter/material.dart';
import 'package:memorybox2/appui/home.dart';
import 'package:memorybox2/pages/intropage.dart';
import 'package:memorybox2/pages/loginpage/signup.dart';
import 'package:memorybox2/pages/progesstracker.dart';
import 'package:google_fonts/google_fonts.dart';

class loginpage extends StatelessWidget {
   loginpage({super.key});
  final TextEditingController nameController = TextEditingController();

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
            begin: Alignment.topCenter,

          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Container(
                  height: srcwidth*0.75,
                  // color: Colors.blue,
                  child: Image.asset(
                    'assets/images/login2.png',
                    height: srcwidth * 0.78,
                    width: srcwidth * 0.9,

                  ),
                ),
                SingleChildScrollView(
                  child: Card(
                    elevation: 10,
                    child: Container(
                      height: srcheight * 0.545,
                      width: srcwidth * 0.83,
                      decoration: BoxDecoration(
          
                        gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 203, 158, 251),
                              Color.fromARGB(255, 117, 104, 240),
                            ],
                            begin: Alignment.topCenter
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
                                'Log In',
                                style: TextStyle(
                                  fontSize: srcwidth * 0.1,
                                  fontWeight: FontWeight.w900,
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
                            child:




                            TextField(
                            controller: nameController,

                              // obscureText: true,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () {
                                  },
                                  icon: Icon(Icons.email),
                                  iconSize: 25,

                                ),
                                filled: true,
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                                fillColor: Color.fromARGB(255, 205, 184, 251),
                                // labelText: 'Password',
                                hintText: 'Email',
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
                                  suffixIcon: IconButton(onPressed: (){
          
                                  },
                                      icon: Icon(Icons.visibility_off)),
                                  filled: true,
                                  fillColor: Color.fromARGB(255, 205, 184, 251),
                                  // labelText: 'Password',
                                  hintText: 'Password',
                                  isDense: true,
                                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
                          Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: SizedBox(
                              width: srcwidth * 0.64,
                              height: srcheight * 0.05,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => welcomepage(name: nameController.text,)),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color.fromARGB(255, 69,44,130),
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(26),
                                  ),
                                  textStyle: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                        fontSize: srcheight * 0.02
                                    ),
                                  ),
                                ),
                                child: Text('Log In'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              // color: Colors.red,
                              child: SizedBox(
                                width: srcwidth * 0.64,
                                height: srcheight * 0.055,
                                child: InkWell(
                                    onTap: (){
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(builder: (context) => intropage()),
                                      // );
                                    },
                                    child: Text('Forgot Password?',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Color.fromARGB(255,72,46,153)),
                                      textAlign: TextAlign.end,)
                                ),
                              ),
                            ),
                          ),
          
          
                          Padding(
                            padding: const EdgeInsets.only(top: 1, left: 38, right: 40  ),
                            child: Container(
                              // color: Colors.red,
                                child: Row(
                                  children: [
                                    Text("Don't have an account ?      ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    InkWell(
                                        onTap: (){
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => intropage()),
                                          );
                                        },
                                        child: InkWell(
                                          onTap: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => signuppage()),
                                            );
                                          },
                                          child: Text('Sign Up',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                color: Color.fromARGB(255,72,46,153)),
                                            textAlign: TextAlign.right,),
                                        )
                                    ),
          
                                  ],
                                )
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 20, left: 45, right: 45),
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
                            child:Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white
                              ),
                              width: srcwidth * 0.65,
                              height: srcheight * 0.055,
                              child: Row(
                                children: [
                                  // Padding(
                                  //   padding: EdgeInsets.only(left: 20),
                                  //
                                  // ),
                                  Expanded(flex: 2,
                                    child: Image.asset('assets/images/google.png',height: srcwidth*0.07,),),
                                  Expanded(
                                      flex: 4,
          
                                      child: Text('Sign in with Gmail',
                                        style:TextStyle(
                                            fontSize: srcwidth*0.04,
                                          fontWeight: FontWeight.w700,
                                        ),)),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
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
