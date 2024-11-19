import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_jaune/constants.dart';
import 'package:flutter/services.dart';
import 'package:page_jaune/models/services.dart';
import 'package:page_jaune/screens/about_screen.dart';

class ServiceDetails extends StatelessWidget {
  final Service chosenService;

  const ServiceDetails({super.key, required this.chosenService});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              fullscreenDialog: true,
              builder: (_) => AboutYalou(),
            ),
          ),
          child: Text(
            "Yalou | يـالـو",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.poppins().fontFamily),
          ),
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
        /*actions: [
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
                Icons.report_gmailerrorred,
                color: Colors.white,
                size: 27,
              ),
            ),
          )
        ],*/
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(chosenService.serviceImage),
                width: 100,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                chosenService.serviceName.toUpperCase(),
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              Text(
                chosenService.serviceDesc,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
              SizedBox(height: 15,),
              Card(

                child: ListTile(

                  leading: Icon(Icons.phone),
                  title: Text(
                    chosenService.serviceNumber,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),

                ),
              ),
              ),
              Card(

                child: ListTile(

                  leading: Icon(Icons.email),
                  title: Text(
                    chosenService.serviceEmail,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),

                  ),
                ),
              ),
              Card(

                child: ListTile(
                  leading: Icon(Icons.language),
                  title: Text(
                    chosenService.serviceWebsite,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),

                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
