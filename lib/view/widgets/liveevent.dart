import 'package:bookmyticket/utils/assest.dart';
import 'package:flutter/material.dart';

class Liveevent extends StatelessWidget {
  const Liveevent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assest.liveevent1),
        ),
      ),
    );
  }
}
