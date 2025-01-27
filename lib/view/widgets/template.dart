import 'package:bookmyticket/utils/assest.dart';
import 'package:flutter/material.dart';

class Template extends StatelessWidget {
  const Template({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            height: 200,
            width: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assest.image1),
              ),
            ),
          ),
          Container(
            height: 200,
            width: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assest.image2),
              ),
            ),
          ),
          Container(
            height: 200,
            width: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assest.image3),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
