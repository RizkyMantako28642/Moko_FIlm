// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../thema.dart';

class HomeSplash extends StatefulWidget {
  const HomeSplash({super.key});

  @override
  State<HomeSplash> createState() => _HomeSplashState();
}

class _HomeSplashState extends State<HomeSplash> {
  @override
  void initState() {
    Timer(Duration(seconds: 3),
        () => Navigator.popAndPushNamed(context, '/welcome'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/bgsplash.png",
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 344),
              child: SizedBox(
                height: 96,
                width: 216,
                child: Image.asset("assets/images/logo.png"),
              ),
            ),
            Text(
              "MOKO FILM",
              style: GoogleFonts.montserrat(
                  fontSize: 26, fontWeight: FontWeight.w800, color: putih),
            ),
          ],
        ),
      ),
    );
  }
}
