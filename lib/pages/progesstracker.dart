import 'package:flutter/material.dart';
import 'package:memorybox2/pages/chatbot.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memorybox2/pages/memorytraining.dart';

class trackerpage extends StatelessWidget {
  const trackerpage({super.key});

  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;
    double horizontalpadding = srcwidth * 0.05;
    double verticalpadding = srcheight * 0.05;

    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 203, 158, 251),
              Color.fromARGB(255, 117, 104, 240),
            ]),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 170),
            child: Column(
              children: [
                Container(
                  // height: srcheight * 0.25,
                  child: Image.asset(
                    'assets/images/tracker.png',
                    height: srcwidth * 0.7,
                    width: srcwidth * 0.7,
                  ),
                ),
                // Container(
                //   child: Image.asset('assets/images/l1r.png'),
                // ),
                Container(
                  // color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: ClipRRect(
                      child: Align(
                        alignment: Alignment.center,
                        heightFactor: 0.51,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '..',
                                style: TextStyle(color: Colors.black, fontSize: srcheight * 0.07),
                              ),
                              TextSpan(
                                text: '.',
                                style: TextStyle(color: Colors.white, fontSize: srcheight * 0.07),
                              ),
                              TextSpan(
                                text: '.',
                                style: TextStyle(color: Colors.black, fontSize: srcheight * 0.07),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),



                Text(
                  'Progress Tracker',
                  style: GoogleFonts.playfairDisplay(
                    textStyle: TextStyle(
                      fontSize: srcheight * 0.0325,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                  child: Text(
                    'Memory Box is a mobile-based application backed by a web-application that ensures compatibility and stability in its own control.',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: srcheight * 0.015,
                        color: Colors.white,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:62),
                  child: SizedBox(
                    width: srcwidth * 0.3,
                    height: srcheight * 0.04,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => memorytrainingpage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 48, 25, 52),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        textStyle: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            // fontWeight: FontWeight.bold,
                              fontSize: srcheight * 0.02
                          ),

                        ),
                      ),
                      child: Text('SKIP'),
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
