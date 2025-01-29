import 'package:bookmyticket/utils/assest.dart';
import 'package:bookmyticket/view/widgets/eventview.dart';
import 'package:flutter/material.dart';

class Freeevent extends StatelessWidget {
  const Freeevent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 10,
        children: [
          PopEvents(
            image: Assest.freeevent1,
            concert: "workshop",
            area: "Bangalore, karnataka Workshop",
            month: "Jan",
            date: 29,
          ),
          PopEvents(
            image: Assest.freeevent2,
            concert: "Business ",
            area: "Bangalore, karnataka Workshop",
            month: "feb",
            date: 23,
          ),
          PopEvents(
            image: Assest.freeevent1,
            concert: "Hactive",
            area: "Bangalore, karnataka Workshop",
            month: "feb",
            date: 23,
          )
        ],
      ),
    );
  }
}
