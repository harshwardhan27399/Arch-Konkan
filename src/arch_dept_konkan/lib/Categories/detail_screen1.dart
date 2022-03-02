import 'dart:io';

import 'package:archdeptkonkan/model/SelectCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DetailScreen1 extends StatelessWidget {
  final SelectCard selectCard;

  DetailScreen1(this.selectCard);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          bottom:
          mediaQuery.padding.bottom == 0 ? 16.0 : mediaQuery.padding.bottom,
        ),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                BackdropImage(selectCard.backdropPath),
                _buildWidgetAppBar(mediaQuery, context),
                //_buildWidgetFloatingActionButton(mediaQuery),
                // _buildWidgetIconBuyAndShare(mediaQuery),
              ],
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  _buildWidgetTitleMovie(context),
                  SizedBox(height: 10.0),
                  _buildWidgetGenreMovie(context),
                  //SizedBox(height: 16.0),
                  //_buildWidgetRating(),
                  //SizedBox(height: 16.0),
                  //_buildWidgetShortDescriptionMovie(context),
                  SizedBox(height: 10.0),
                  _buildWidgetSynopsisMovie(context),
                  // SizedBox(height: 16.0),
                  // _buildWidgetScreenshots(mediaQuery, context),
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

        ],
      ),
    );
  }

  Widget _buildWidgetTitleMovie(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Center(
        child: Text(
          selectCard.title,
          style: Theme
              .of(context)
              .textTheme
              .title,
        ),
      ),
    );
  }

  Widget _buildWidgetGenreMovie(BuildContext context) {
    return Center(
      child: Text(
        selectCard.place,
        style: Theme
            .of(context)
            .textTheme
            .subtitle
            .merge(
          TextStyle(color: Colors.grey),
        ),
      ),
    );
  }

  Widget _buildWidgetSynopsisMovie(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Center(
        child: Text(
          selectCard.description,
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}


class BackdropImage extends StatelessWidget {
  final String backdropPath;

  BackdropImage(this.backdropPath);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return ClipPath(
      child: Image.asset(
        backdropPath,
        height: mediaQuery.size.height / 2,
        width: mediaQuery.size.width,
        fit: BoxFit.cover,
      ),
      //clipper: BottomWaveClipper(),
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 70.0);

    var firstControlPoint = Offset(size.width / 2, size.height);
    var firstEndPoint = Offset(size.width, size.height - 70.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(size.width, size.height - 70.0);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
