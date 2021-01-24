import 'package:flutter/material.dart';
import 'package:quizmaker/views/Ranking/generated/Generated15Widget1.dart';
import 'package:quizmaker/views/Ranking/generated/GeneratedEllipse1Widget.dart';

/* Group Group 38
    Autogenerated by FlutLab FTF Generator
  */
class Score extends StatelessWidget {
  Score(this.score);
  final int score;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46.0,
      height: 46.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 0.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 46.0,
              height: 46.0,
              child: GeneratedEllipse1Widget(),
            ),
            Positioned(
              left: 4.0,
              top: 6.0,
              right: null,
              bottom: null,
              width: 38.0,
              height: 34.0,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  '''$score''',
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 1.171875,
                    fontSize: 25.0,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 139, 202, 141),

                    /* letterSpacing: 0.0, */
                  ),
                ),
              )
            )
          ]),
    );
  }
}