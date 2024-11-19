import 'package:flutter/material.dart';
import 'package:page_jaune/constants.dart';
import 'package:page_jaune/data.dart';
import 'package:page_jaune/widgets/service_label.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          ListView(
            children: [
              ...serviceDatas.map((e) => Padding(
                padding: const EdgeInsets.only(top: 12),
                child: ServiceLabel(service: e),
              ))
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 100.0,
              decoration: BoxDecoration(
                gradient:LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white.withOpacity(0.1),
                      Colors.white,
                    ]
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
