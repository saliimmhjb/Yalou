import 'package:flutter/material.dart';

class Service {
  final String serviceName;
  final String serviceDesc;
  final String serviceNumber;
  final String serviceEmail;
  final String serviceImage;
  final String serviceDomaine;
  final String serviceWebsite;
  const Service(
      {required this.serviceName,
      required this.serviceDesc,
      required this.serviceNumber,
      required this.serviceEmail,
      required this.serviceImage,
      required this.serviceDomaine,
      required this.serviceWebsite,
      });
}