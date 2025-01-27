import 'package:bookmyticket/utils/assest.dart';
import 'package:bookmyticket/utils/theme.dart';
import 'package:bookmyticket/view/widgets/appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backGroundColor,
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(15.0),
          children: [
            Appbar(),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assest.image1),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Events",
              style: AppTheme.heading,
            )
          ],
        ),
      ),
    );
  }
}
