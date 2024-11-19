import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_jaune/data.dart';
import 'package:page_jaune/models/services.dart';
import 'package:page_jaune/screens/service_details.dart';


class ServiceLabel extends StatelessWidget {
  final Service service;

  const ServiceLabel({Key? key, required this.service}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          fullscreenDialog: true,
          builder: (_) => ServiceDetails(chosenService: service),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 120,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Image(
                      height: 50,
                      image: AssetImage(service.serviceImage),
                    ),
                    SizedBox(width: 10), // Add some spacing
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            service.serviceName.toUpperCase(),
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            service.serviceDesc,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print("clicked");
                      },
                      child: Icon(Icons.arrow_forward_ios_sharp),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
