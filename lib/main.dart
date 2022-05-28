// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle style1 = GoogleFonts.poppins(
      color: Colors.white,
      fontWeight: FontWeight.w400,
    );
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffDAE5D0),
      body: Center(
        child: Container(
          height: size.height / 1.3,
          width: size.width / 1.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0xFF2A2550),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WidgetCircularAnimator(
                innerColor: Colors.yellow,
                outerColor: Colors.white,
                size: 180,
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey[200]),
                  child: Icon(
                    Icons.person_outline,
                    color: Colors.deepOrange[200],
                    size: 60,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Ohayo-sensei',
                style: style1,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'SOON!!',
                style: style1,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'A kiddo who is learning. Currently just playing around with some stuff 🚀',
                style: style1,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 240,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(08),
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('dattebayosaskue@gmail.com'),
                )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 120,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'images/twitter.png',
                      height: 28,
                    ),
                    Image.asset(
                      'images/linkedin.png',
                      height: 28,
                    ),
                    Image.asset(
                      'images/facebook.png',
                      height: 28,
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
