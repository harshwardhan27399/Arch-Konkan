import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:archdeptkonkan/model/ChoiceCard.dart';

class Events extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          bottom:
          mediaQuery.padding.bottom == 0 ? 6.0 : mediaQuery.padding.bottom,
        ),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                _buildWidgetAppBar(mediaQuery, context),
              ],
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  //_buildWidgetTitleMovie(context),
                  _galleryCards(context),
                  //SizedBox(height: 16.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWidgetAppBar(MediaQueryData mediaQuery, BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.0,
        top: mediaQuery.padding.top == 0 ? 16.0 : mediaQuery.padding.top + 8.0,
        right: 16.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 10.0,),
          Expanded(
            child: Text('Recent Events',
              style: TextStyle(fontSize: 30.0,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }


  Widget _galleryCards(BuildContext context) {

    List<Choice> choices = const <Choice>[
      const Choice(title: 'Kalajartra2019',
          place: '23 -25 Januaryat Thiba Palace, Ratnagiri',
          description: 'Various workshops related to sketching, sculpture, singing are organized by Art circle group.',
          imglink: 'assets/images/imgs/kalajatra/a1.jpg'),
      const Choice(title: 'Drawing Exhibition',
          place: '23rd December at Thiba Palace, Ratnagiri',
          description: "Art Circle organized an exhibition of student's drawings from different schools in the event named as Kalajartra2018.",
          imglink: 'assets/images/imgs/kalajatra/a12.jpg'),
      const Choice(title: 'Kala Sangit Festival',
          place: '21st February at Thiba Palace, Ratnagiri',
          description: 'Concert of great indian classical singers was organized at Thiba Palace, Ratnagiri.',
          imglink: 'assets/images/imgs/kalajatra/b4.jpg'),

    ];
    return Container(
      child: Column(
          children: List.generate(choices.length, (index) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom:18.0),
                child: ChoiceCard(choice: choices[index], item: choices[index]),
              ),
            );
          }
          )
      ),
    );
  }
}
