// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Gallery(),
    );
  }
}

class Gallery extends StatelessWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(options: CarouselOptions(height: 400.0), items: [
      SvgPicture.asset("assets/images/low_poly_fantastic_nature.svg"),
      SvgPicture.network(
          "https://publicdomainvectors.org/photocms/files1/Surreal-Japanese-Mountains.svg"),
    ]);
  }
}
