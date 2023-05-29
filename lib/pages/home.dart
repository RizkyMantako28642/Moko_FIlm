// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../thema.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ungubackground1,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 251,
                width: 360,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/tameng.png",
                    ),
                  ),
                ),
              ),
              Container(
                height: 251,
                width: 360,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff05031F).withOpacity(0),
                      Color(0xff05031F),
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
                      padding: const EdgeInsets.only(top: 58),
                      child: Text(
                        "MOKO FILM",
                        style: GoogleFonts.inter(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            color: putih),
                      ),
                    ),
                  ),
                  Text(
                    "Menonton Lebih Maksimal \nDengan Device Yang Minimal",
                    style: GoogleFonts.inter(
                      color: putih,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 254,
                    height: 40,
                    decoration: BoxDecoration(
                      color: putih,
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: IconButton(
                              icon: Icon(Icons.clear), onPressed: () {}),
                          hintText: "Search...",
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 55,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            kuning,
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Film",
                          style: GoogleFonts.inter(
                            color: ungubackground1,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Program Tv",
                          style: GoogleFonts.inter(
                            color: putih,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 185),
                        child: Text(
                          "Trending",
                          style: GoogleFonts.inter(
                            color: putih,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "See All",
                          style: GoogleFonts.inter(
                            color: putih,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Container(
                          height: 160,
                          width: 120,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/bgsplash.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
