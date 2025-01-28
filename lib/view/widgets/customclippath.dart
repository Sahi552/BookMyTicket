import 'package:flutter/material.dart';

class Customclippath extends StatefulWidget {
  const Customclippath({
    super.key,
  });

  @override
  State<Customclippath> createState() => _CustomclippathState();
}

class _CustomclippathState extends State<Customclippath> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        width: 400,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white70,
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height * 0.75);

    path.lineTo(size.width * 0.3, size.height * 0.75);

    path.quadraticBezierTo(size.width * 0.5, size.height * 0.75,
        size.width * 0.6, size.height * 0.6);

    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.6, size.width, size.height * 0.6);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
