import 'package:flutter/material.dart';
import 'package:memorybox2/pages/progesstracker.dart';
import 'pages/intropage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;
    double horizontalpadding = srcwidth*0.05;
    double verticalpadding = srcheight*0.05;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme:TextTheme(
          headlineMedium:TextStyle(
              fontSize: srcheight*0.033,
            color: Colors.white,
              fontFamily: null
          ),
        ),
      ),
      // home: IntroPage()
      home: intropage(),
    );
  }
}
