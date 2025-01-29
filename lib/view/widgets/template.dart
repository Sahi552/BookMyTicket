import 'package:bookmyticket/utils/assest.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Template extends StatelessWidget {
  const Template({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayInterval: Duration(seconds: 5),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        viewportFraction: 1,
      ),
      items: [
        Container(
          width: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assest.image1),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assest.image2),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assest.image3),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
