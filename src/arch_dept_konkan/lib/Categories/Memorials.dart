import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:archdeptkonkan/model/ChoiceCard.dart';

class Memorials extends StatelessWidget {

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
            child: Text('Memorials',
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
      const Choice(title: 'Lokmanya Tilak Birthplace',
          place: 'Ratnagiri',
          description: 'Lokmanya Tilak was born in 1856 in Ratnagiri. Lokmanya Tilak lived '
              'for 10 years in a typical Konkani house which is situated in the Tilak colony'
              ' in the centre of the city of Ratnagiri. Tilak’s birthplace in Ratnagiri has'
              ' been preserved by the Archaeological Department of the state of Maharashtra'
              ' and it has been declared as a memorial. There is a statue of Lokmanya Tilak '
              'in the outside premises. The birthday of Lokmanya Tilak is celebrated here '
              'every year. \n\nVisiting Hours: 5 am to 6 pm',
          imglink: 'assets/images/imgs/gallery/lokmanya.JPG'),

      const Choice(title: 'Vasudev Balawant Phadake memorial',
          place: 'Shirdhon, Raigad',
          description: 'Vasudev Balawant Phadake was born on 4th April, 1845 in a small '
              'village named Shirdhon situated in Raigad in Marathi Brahmin family. '
              'Eventually he moved to Pune for the job of clerk for about 15 years.'
              ' Phadke came into limelight when he got control of the city of Pune for a '
              'few days when he caught the British soldiers off guard during one of his '
              'surprise attacks.The 300 years old house of Phadake is preserved as a '
              'memorial under the Archaeology department of ratnagiri There is a statue '
              'of Vasudev Balawant Phadake in the outside premises. \n\nVisiting Hours: 5 am to 6 pm',
          imglink: 'assets/images/imgs/gallery/vasudev.jpg'),

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
