import 'package:bookmyticket/view/pages/bottamnavbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Bottamnavbar(),
      theme: ThemeData(fontFamily: 'Poppins'),
    );
  }
}
