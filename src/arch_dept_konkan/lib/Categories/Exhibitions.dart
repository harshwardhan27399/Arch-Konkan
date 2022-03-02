import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:archdeptkonkan/model/ChoiceCard.dart';

class Exhibitions extends StatelessWidget {

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
            child: Text('Recent Exhibitions',
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
      const Choice(title: '31st January, 2018',
          place: '',
          description: 'Clay is one medium that promotes creativity. It is especially beneficial to young people – it helps promote self-confidence, encourages self-expression and develops problem-solving skills.',
          imglink: 'assets/images/imgs/kalajatra/a10.jpg'),

      const Choice(title: '31st January, 2018',
          place: '',
          description: 'Sand sculpture is reminiscent of any Indian sculptures and can be of multiple shapes, sizes and forms. This form of art was native to Odisha but has now spread its roots to the whole of India.',
          imglink: 'assets/images/imgs/kalajatra/a8.jpg'),

      const Choice(title: '31st January, 2018',
          place: '',
          description: 'Like all other handicrafts and crafts, the tradition of pottery making in India is very old.For thousands of years pottery art has been one of the most beautiful forms of expression. A piece of pottery has a visual message in its shape and color. ',
          imglink: 'assets/images/imgs/kalajatra/a2.jpg'),

      const Choice(title: '31st January, 2018',
          place: '',
          description: 'While the word cartoon usually refers to an animation or a funny drawing, in an art historical context it can also refer to a full-scale preparatory drawing for a fresco, oil painting or a tapestry.',
          imglink: 'assets/images/imgs/kalajatra/a3.jpg'),
      const Choice(title: '31st January, 2018',
          place: '',
          description: 'A portrait is a painting, photograph, sculpture, or other artistic representation of a person, in which the face and its expression is predominant. The intent is to display the likeness, personality, and even the mood of the person.',
          imglink: 'assets/images/imgs/kalajatra/a11.jpg'),

      const Choice(title: '31st January, 2018',
          place: '',
          description: 'Terracotta is a type of ceramic pottery. It’s used to make many flower pots. Terracotta is also often used for pipes, bricks, and sculptures.',
          imglink: 'assets/images/imgs/kalajatra/a5.jpg'),

      const Choice(title: '31st January, 2018',
          place: '',
          description: 'Landscape painting, also known as landscape art, is the depiction of landscapes in art—natural scenery such as mountains, valleys, trees, rivers, and forests, especially where the main subject is a wide view—with its elements arranged into a coherent composition. ',
          imglink: 'assets/images/imgs/kalajatra/a6.jpg'),

      const Choice(title: '31st January, 2018',
          place: '',
          description: 'Body painting and face painting are being practiced in Indian culture since ancient times. Face painting is a ritual in Indian villages in their religious festivities, dance and drama. Face painting is very much a part of Indian folk culture and tribal art even today.',
          imglink: 'assets/images/imgs/kalajatra/a7.jpg'),

      const Choice(title: '31st January, 2018',
          place: '',
          description: 'India has a long-established history in the evolution of copper. By the end of 16th century tunnel, copper industry was already mushrooming in villages, nooks, yards and mills.',
          imglink: 'assets/images/imgs/kalajatra/a9.jpg'),


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
