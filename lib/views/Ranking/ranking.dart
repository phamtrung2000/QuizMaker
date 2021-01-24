import 'package:flutter/material.dart';
import 'package:quizmaker/views/Ranking//generated/GeneratedGroup41Widget.dart';
import 'package:quizmaker/views/Ranking//generated/GeneratedGroup40Widget.dart';
import 'package:quizmaker/views/Ranking//generated/GeneratedGroup39Widget.dart';
import 'package:quizmaker/views/Ranking/generated/GeneratedGroup14Widget4.dart';
import 'package:quizmaker/views/Ranking/generated/GeneratedGroup4Widget4.dart';
import 'package:quizmaker/views/Ranking/generated/GeneratedRANKINGWidget.dart';
import 'package:quizmaker/views/Ranking/generated/GeneratedGroup42Widget.dart';

class Ranking extends StatefulWidget {

  Ranking();
  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Ranking> {
  int score = 1;
  String name = 'Trung';
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body:  Container(
          width: 411.0,
          height: 731.0,
          child: ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Container(
        width: 411.0,
        height: 731.0,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.zero,
                child: Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Positioned(
                left: 36.0,
                top: 19.0,
                right: null,
                bottom: null,
                width: 114.0,
                height: 28.0,
                child: GeneratedGroup14Widget4(),
              ),
              Positioned(
                left: 28.0,
                top: 155.0,
                right: null,
                bottom: null,
                width: 355.0,
                height: 95.0,
                child: GeneratedGroup39Widget(this.name,this.score),
              ),
              Positioned(
                left: 123.0,
                top: 624.0,
                right: null,
                bottom: null,
                width: 200.0,
                height: 49.0,
                child: GeneratedGroup4Widget4(),
              ),
              Positioned(
                left: 64.0,
                top: 56.0,
                right: null,
                bottom: null,
                width: 287.0,
                height: 72.0,
                child: GeneratedRANKINGWidget(),
              ),
              Positioned(
                left: 28.0,
                top: 491.0,
                right: null,
                bottom: null,
                width: 355.0,
                height: 95.0,
                child: GeneratedGroup42Widget(),
              ),
              Positioned(
                left: 28.0,
                top: 384.0,
                right: null,
                bottom: null,
                width: 355.0,
                height: 95.0,
                child: GeneratedGroup41Widget(),
              ),
              Positioned(
                left: 28.0,
                top: 268.0,
                right: null,
                bottom: null,
                width: 355.0,
                height: 95.0,
                child: GeneratedGroup40Widget(),
              )
            ]),
      ),
    ))
    );
  }
}
