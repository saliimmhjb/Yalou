import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_jaune/constants.dart';
import 'package:page_jaune/screens/about_screen.dart';
import 'package:page_jaune/screens/numbers_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Yalou",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: mainColor),
        scaffoldBackgroundColor: scaffColor,
        primaryColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        fontFamily: GoogleFonts.poppins().fontFamily,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: new HomeScreen(),

    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Yalou | يـالـو",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.poppins().fontFamily),
        ),
        toolbarHeight: 90,
        centerTitle: true,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 13.0),
            child: GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (_) => AboutYalou(),
                ),
              ),
              child: Icon(
                Icons.contact_support_outlined,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: NumbersScreen(),
    );
  }
}
