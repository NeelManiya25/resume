import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:resume/modals/Globals.dart';

class SlideActionPage extends StatefulWidget {
  const SlideActionPage({Key? key}) : super(key: key);

  @override
  State<SlideActionPage> createState() => _SlideActionPageState();
}

class _SlideActionPageState extends State<SlideActionPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/gifs/SplashScreenLogo.gif'),
          SizedBox(
            height: h * 0.1,
            width: w * 0.75,
            child: SlideAction(
              innerColor: colors.white,
              outerColor: colors.primary,
              onSubmit: () {
                Navigator.of(context).pushReplacementNamed('HomePage');
              },
              animationDuration: const Duration(
                milliseconds: 400,
              ),
              sliderButtonIcon: Icon(
                Icons.arrow_forward_ios_rounded,
                color: colors.primary,
              ),
              alignment: Alignment.center,
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: h * 0.03,
                  color: colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
