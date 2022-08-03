import 'package:flutter/material.dart';

import '../../constrains.dart';
import '../../utils/back_draw.dart';
import '../../utils/functions.dart';
import '../home/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _timer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return Center(
      child: Stack(
        children: [
          BackGroundDraw(
            colorTop: yellowBase.withOpacity(.7),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * .45,
                  width: MediaQuery.of(context).size.width * .5,
                  child: Opacity(
                    opacity: 0.7,
                    child: Image.asset(
                      "assets/try2.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Text(
                "Dental Saude",
                style: TextStyle(
                  color: pinkBase.withOpacity(0.5),
                  fontWeight: FontWeight.bold,
                  fontSize: mediaQuery(context, 0.07),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _timer() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }
}
