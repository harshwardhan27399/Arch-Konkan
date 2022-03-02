import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:archdeptkonkan/model/ChoiceCard.dart';

class Gallery extends StatelessWidget {

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
            child: Text('Gallery',
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
      const Choice(title: 'Kanhoji Agre Mausoleum',
          place: 'Alibaug',
          description: '',
          imglink: 'assets/images/imgs/gallery/agre.jpg'),
      const Choice(title: 'Bankot fort',
          place: 'Ratnagiri',
          description: '',
          imglink: 'assets/images/imgs/gallery/bankot.JPG'),
      const Choice(title: 'Baudha caves',
          place: 'Khed',
          description: '',
          imglink: 'assets/images/imgs/gallery/baudh.jpg'),
      const Choice(title: 'Bharatgad fort',
          place: 'Malvan',
          description: '',
          imglink: 'assets/images/imgs/gallery/bharatgad.JPG'),
      const Choice(title: 'Dutch warehouse',
          place: 'Vengurla',
          description: '',
          imglink: 'assets/images/imgs/gallery/dutch.jpg'),
      const Choice(title: 'Ghodbandar fort',
          place: 'Thane',
          description: '',
          imglink: 'assets/images/imgs/gallery/ghodbandar.jpg'),
      const Choice(title: 'Goa fort',
          place: 'Dapoli',
          description: '',
          imglink: 'assets/images/imgs/gallery/goa.jpg'),
      const Choice(title: 'Gopalgad fort',
          place: 'Guhagar',
          description: '',
          imglink: 'assets/images/imgs/gallery/gopalgad.JPG'),
      const Choice(title: 'Karneshwar temple',
          place: 'Sangmeshwar',
          description: '',
          imglink: 'assets/images/imgs/gallery/karneshwar.jpg'),
      const Choice(title: 'Khandeshwri caves',
          place: 'Bhivandi',
          description: '',
          imglink: 'assets/images/imgs/gallery/khandeshwri.jpg'),
      const Choice(title: 'Tilak Birthplace',
          place: 'Ratnagiri',
          description: '',
          imglink: 'assets/images/imgs/gallery/lokmanya.JPG'),
      const Choice(title: 'Mahipatgad fort',
          place: 'Sangmeshwar',
          description: '',
          imglink: 'assets/images/imgs/gallery/mahipatgad.jpg'),
      const Choice(title: 'Mangad fort',
          place: 'Mangaon',
          description: '',
          imglink: 'assets/images/imgs/gallery/mangad.JPG'),
      const Choice(title: 'Purnagad',
          place: 'Ratnagiri',
          description: '',
          imglink: 'assets/images/imgs/gallery/purnagad1.jpg'),
      const Choice(title: 'Rasalgad',
          place: 'Khed',
          description: '',
          imglink: 'assets/images/imgs/gallery/rasalgad.JPG'),
      const Choice(title: 'Shirgaon fort',
          place: 'Palghar',
          description: '',
          imglink: 'assets/images/imgs/gallery/shirgav.jfif'),
      const Choice(title: 'Thiba Palace',
          place: 'Ratnagiri',
          description: '',
          imglink: 'assets/images/imgs/gallery/thibapalace.jpg'),
      const Choice(title: 'Underi fort',
          place: 'Alibaug',
          description: '',
          imglink: 'assets/images/imgs/gallery/underi.jpg'),
      const Choice(title: 'Vasudev Balwant Fadke Birthplace',
          place: 'Panvel',
          description: '',
          imglink: 'assets/images/imgs/gallery/vasudev.jpg'),
      const Choice(title: 'Yashwantgad fort',
          place: 'Vengurla',
          description: '',
          imglink: 'assets/images/imgs/gallery/yashgad.JPG'),

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
