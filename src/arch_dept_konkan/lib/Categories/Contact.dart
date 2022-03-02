import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Contact extends StatelessWidget {

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
        top: mediaQuery.padding.top == 0 ? 8.0 : mediaQuery.padding.top + 8.0,
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
            child: Text('Contact us',
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

    var mediaQuery = MediaQuery.of(context);
    return Container(
      child: Column(
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[

      Card(
      color: Colors.white,
          child: Column(
            children: <Widget>[
              new Container(
                  padding: const EdgeInsets.all(8.0),
                  child:
                  Image.asset(
                    'assets/images/Screenshot (81).png',
                    width: mediaQuery.size.width,
                    fit: BoxFit.cover,
                  )),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          )
      ),
              Padding(
                //padding: const EdgeInsets.only(bottom:18.0,top:8.0),
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: new ListTile(
                  leading: Icon(Icons.home, size: 40,color: Colors.greenAccent,),
                  title: Text('Near Govt. Polytechnic College, Malnaka', style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 20.0)),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
                          child: Row(
                            children: <Widget>[
                              Text("Ratnagiri, Maharashtra",maxLines: 2, style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold,fontSize: 12.0)),
                              ],
                          ),
                        ),


            ],
          ),
          ),
          ),
          ),
              Padding(
                //padding: const EdgeInsets.only(bottom:18.0,top:8.0),
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: new ListTile(
                  leading: Icon(Icons.phone, size: 40,color: Colors.greenAccent,),
                  title: Text('9421231072', style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 20.0)),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
                          child: Row(
                            children: <Widget>[
                              Text("Monday to Friday :9am to 5 pm",maxLines: 2, style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold,fontSize: 12.0)),
                            ],
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                //padding: const EdgeInsets.only(bottom:18.0,top:8.0),
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: new ListTile(
                  leading: Icon(Icons.mail_outline, size: 40,color: Colors.greenAccent,),
                  title: Text('support@archaeologyratnagiri.com', style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 20.0)),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
                          child: Row(
                            children: <Widget>[
                              Text("Send us your query anytime!",maxLines: 2, style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold,fontSize: 12.0)),
                            ],
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              ),
        ],
      ),
  ]
    ));
  }
}
