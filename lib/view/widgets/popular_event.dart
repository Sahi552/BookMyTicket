import 'package:bookmyticket/utils/assest.dart';
import 'package:flutter/material.dart';

class PopularEvent extends StatelessWidget {
  const PopularEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Column(
            children: [
              Container(
                width: 144,
                height: 186,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(
                      Assest.popevent1,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
