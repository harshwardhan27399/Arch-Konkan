import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Choice {
  final String title;
  final String place;
  final String description;
  final String imglink;

  const Choice({this.title, this.place, this.description, this.imglink});
}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {Key key, this.choice, this.onTap, @required this.item, this.selected: false}
      ) : super(key: key);

  final Choice choice;
  final VoidCallback onTap;
  final Choice item;
  final bool selected;


  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    return Card(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            new Container(
                padding: const EdgeInsets.all(8.0),
                child:
                Image.asset(
                  choice.imglink,
                  width: mediaQuery.size.width,
                  fit: BoxFit.cover,
                )),
            new Container(
              padding: const EdgeInsets.all(10.0),
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(choice.title, style: Theme.of(context).textTheme.title,maxLines: 2,),
                  Text(choice.place, style: TextStyle(color: Colors.black.withOpacity(0.5))),
                  SizedBox(height: 5.0,),
                  Text(choice.description, textAlign: TextAlign.justify,),
                ],
              ),

            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        )
    );
  }
}
