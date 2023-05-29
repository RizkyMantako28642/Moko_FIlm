// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../thema.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/bgwelcome.png",
                  ),
                  fit: BoxFit.cover,
                  opacity: 0.4),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff000000).withOpacity(0),
                  Color(0xff000000),
                ],
                stops: [0.5, 1],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 270),
                  child: Image.asset(
                    "assets/images/logo.png",
                    height: 96,
                    width: 216,
                  ),
                ),
              ),
              Text(
                "MOKO FILM",
                style: GoogleFonts.montserrat(
                    fontSize: 24, fontWeight: FontWeight.w800, color: putih),
              ),
              Text(
                "Menonton Lebih Maksimal \nDengan Device Yang Minimal",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    color: putih, fontSize: 10, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 219,
              ),
              SizedBox(
                height: 44,
                width: 189,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff6152FF),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(21))),
                  onPressed: () {
                    Navigator.of(context).popAndPushNamed('/home');
                  },
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.montserrat(
                        fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
