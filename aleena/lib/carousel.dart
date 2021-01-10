import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class CarouselImage extends StatefulWidget {
  @override
  _CarouselImageState createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: Carousel(
        dotSize: 4.0,
        dotSpacing: 18.0,
        dotColor: Colors.white,
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.transparent,
        dotVerticalPadding: 5.0,
        dotPosition: DotPosition.bottomRight,
        images: [
          Image.asset(
            'assets/images/carousel1.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/carusel2.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/carousel3.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/carousel4.jpg',
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
