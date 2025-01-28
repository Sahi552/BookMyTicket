import 'package:bookmyticket/utils/assest.dart';
import 'package:flutter/material.dart';

class Watchedevent extends StatelessWidget {
  const Watchedevent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 10,
        children: [
          Container(
            height: 120,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(Assest.watchedevent1),
              ),
            ),
          ),
          Container(
            height: 120,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(Assest.watchedevent2),
              ),
            ),
          ),
          Container(
            height: 120,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(Assest.watchedevent3),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
