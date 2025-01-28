import 'package:bookmyticket/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondaryAppbar extends StatefulWidget {
  const SecondaryAppbar({super.key});

  @override
  State<SecondaryAppbar> createState() => _SecondaryAppbarState();
}

class _SecondaryAppbarState extends State<SecondaryAppbar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Live Events",
                style: AppTheme.heading,
              ),
              Row(
                children: [
                  Text(
                    "Bangalore",
                    style: AppTheme.footer,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      CupertinoIcons.forward,
                      size: 20,
                      color: AppTheme.footerColor,
                    ),
                  )
                ],
              )
            ],
          ),
          Expanded(child: Container()),
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.search)),
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.square_list)),
        ],
      ),
    );
  }
}
