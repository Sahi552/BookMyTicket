import 'package:bookmyticket/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appbar extends StatefulWidget {
  const Appbar({super.key});

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                      color: AppTheme.footerColor,
                      borderRadius: BorderRadius.circular(19.0),
                      border: Border.all(
                        color: AppTheme.iconBoxColor,
                        width: 3,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Z",
                        style: AppTheme.iconText,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Zampa",
                        style: AppTheme.heading,
                      ),
                      Text(
                        "Bangalore",
                        style: AppTheme.footer,
                      )
                    ],
                  ),
                  Expanded(child: Container()),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.search),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.bell),
                  ),
                  Container(
                    height: 34,
                    width: 84,
                    decoration: BoxDecoration(
                      color: AppTheme.footerColor,
                      borderRadius: BorderRadius.circular(17),
                      border: Border.all(width: 1.5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Refer",
                          style: AppTheme.footer
                              .copyWith(color: AppTheme.headingColor),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
  }
}