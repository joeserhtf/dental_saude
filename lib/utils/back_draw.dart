import 'package:flutter/material.dart';

import '../constrains.dart';

class BackGroundDraw extends StatelessWidget {
  const BackGroundDraw({Key? key, required this.colorTop}) : super(key: key);

  final Color colorTop;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: CustomPaint(
        painter: CurvePainter(color: colorTop),
        child: Stack(
          children: [
            Positioned(
              bottom: MediaQuery.of(context).size.width * 0.15,
              left: -200,
              child: Icon(
                Icons.circle,
                size: 300,
                color: greenBase.withOpacity(0.2),
              ),
            ),
            Positioned(
              bottom: -175,
              right: -125,
              child: Icon(
                Icons.circle,
                size: 300,
                color: greenBase.withOpacity(0.2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  const CurvePainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(size.width * .6, 0);
    path.quadraticBezierTo(
      size.width * .7,
      size.height * .08,
      size.width * .9,
      size.height * .05,
    );
    path.arcToPoint(
      Offset(
        size.width * .93,
        size.height * .15,
      ),
      radius: Radius.circular(size.height * .05),
    );
    path.cubicTo(
      size.width * .6,
      size.height * .15,
      size.width * .5,
      size.height * .46,
      0,
      size.height * .3,
    );
    path.lineTo(0, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
