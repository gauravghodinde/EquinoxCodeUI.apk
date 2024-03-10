// import 'dart:ffi';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:sneakers/pages/home_page.dart';
import 'package:sneakers/tools/buton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SNEKKER',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          // primarySwatch: Colors.blue,
          ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        // alignment: ,
        padding: EdgeInsets.fromLTRB(15, 20, 15, 55),
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  // height: 500,
                  ),
              SizedBox(
                width: 309,
                height: 90,
                child: Text(
                  "THE RACE HAS \nJUST BEGIN",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w900,
                      // fontFamily: popings,
                      fontSize: 40,
                      letterSpacing: 0.32,
                      height: 1.025,
                      color: Color(0xff404040)),
                ),
              ),
              Stack(
                children: [
                  Image.asset(
                    'assets/images/titleshow.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  // Image.asset('assets/images/shadow.png'),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 250, 0, 0),
                    child: SizedBox(
                      width: 299,
                      height: 66,
                      child: Text(
                        "The race for the perfect shoes is\n underway. Step into style and\n performance today!",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 17,
                            letterSpacing: 0,
                            height: 1.3,
                            color: Color(0xffA3A3A3)),
                      ),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage())),
                  child: Butons("GET STARTED", Icons.arrow_forward))
            ]),
      ),
    );
  }
}
