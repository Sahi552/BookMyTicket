import 'package:bookmyticket/utils/assest.dart';
import 'package:bookmyticket/view/widgets/eventview.dart';
import 'package:flutter/material.dart';

class PopularEvent extends StatelessWidget {
  const PopularEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 10,
        children: [
          PopEvents(
            image: Assest.popevent1,
            area: "Bangalore karnataka concert",
            concert: "MUSIC KA 24",
            month: "Jan",
            date: 20,
          ),
          PopEvents(
            image: Assest.popevent2,
            area: "Bangalore karnataka show",
            concert: "CAR SHOW KA",
            month: "Jan",
            date: 20,
          ),
          PopEvents(
            image: Assest.popevent1,
            area: "Bangalore karnataka comedy",
            concert: "Comedy KA 24",
            month: "Jan",
            date: 20,
          )
        ],
      ),
    );
  }
}
