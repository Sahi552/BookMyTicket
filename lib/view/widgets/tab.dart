import 'package:flutter/material.dart';

class TabView extends StatelessWidget {
  const TabView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 10,
        children: [
          TabContainer(
            text: "Comedy shows",
            isSelected: true,
          ),
          TabContainer(
            text: "Music concert",
            isSelected: false,
          ),
          TabContainer(
            text: "Dj Nights",
            isSelected: false,
          ),
        ],
      ),
    );
  }
}

class TabContainer extends StatelessWidget {
  final String text;
  final bool? isSelected;
  const TabContainer({
    super.key,
    required this.text,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: EdgeInsets.all(19),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          color: isSelected == true ? Color(0xff2E2D2C) : Colors.white,
          border: Border.all(
            width: 2,
            color: isSelected == true ? Colors.white : Colors.black,
          )),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: isSelected == true ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
