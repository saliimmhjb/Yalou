import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_jaune/constants.dart';

class AboutYalou extends StatelessWidget {
  const AboutYalou({super.key});

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
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage("assets/profile.jpg"),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Salim Mahjoub",
                    style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                    ),
                  ),
                  Text(
                    'Developer',
                    style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 1.0,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  Column(
                    children: [
                      Card(
                        child: ListTile(
                          title:Text(
                            "Saliim Mhjb",
                            style: TextStyle(
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.0,
                            ),
                          ),
                          leading: Icon(FontAwesomeIcons.facebook),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title:Text(
                            "x.saliim",
                            style: TextStyle(
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.0,
                            ),
                          ),
                          leading: Icon(FontAwesomeIcons.instagram),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          title:Text(
                            "Salim Mahjoub",
                            style: TextStyle(
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.0,
                            ),
                          ),
                          leading: Icon(FontAwesomeIcons.linkedin),
                        ),
                      ),
                    ],
                  ),

                  Expanded(
                    child: SizedBox(), // Spacer
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                      shadowColor: Colors.transparent,
                      color: Colors.white,
                      elevation: 0,
                      child: ListTile(
                        title: Text(
                          "What is Yalou?",
                          style: TextStyle(
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.0,
                          ),
                        ),
                        leading: Icon(Icons.info),
                        subtitle: Text(
                          "Yalou is a Tunisian mobile app for accessing contact details and websites of different services in Tunisia. It's user-friendly, secure, and helps users connect with businesses, restaurants, hospitals, and more quickly and conveniently.",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 8,
                          //textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 0.0,
                          ),
                        ),
                      )
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
