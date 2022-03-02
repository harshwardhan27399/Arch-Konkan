import 'package:archdeptkonkan/model/SelectCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:archdeptkonkan/Categories/Gallery.dart';
import 'package:archdeptkonkan/Categories/Contact.dart';
import 'package:archdeptkonkan/Categories/detail_screen1.dart';
import 'package:archdeptkonkan/Categories/Events.dart';
import 'package:archdeptkonkan/Categories/Exhibitions.dart';
import 'package:archdeptkonkan/Categories/Forts.dart';
import 'package:archdeptkonkan/Categories/Memorials.dart';
import 'package:archdeptkonkan/Categories/Museums.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            bottom: mediaQuery.padding.bottom == 0 ? 16.0 : 0,
          ),
          child: Column(
            children: <Widget>[
              //_buildWidgetAppBar(),
              //SizedBox(height: 10.0),
              Expanded(
                child: ListView(
                  children: [
                    _buildHomeWidgetBanner(mediaQuery,context),
                    SizedBox(height: 14.0),
                    //_buildWidgetCategories(mediaQuery),
                    _buildCategories(mediaQuery,context),
                    SizedBox(height: 14.0),
                    _buildWidgetBanner(mediaQuery),
                    SizedBox(height: 24.0),
                    _buildHours(mediaQuery, context),
                    //_buildWidgetMyList(mediaQuery, context),
                    SizedBox(height: 24.0),
                    _buildSocial(mediaQuery, context),
                    // _buildWidgetPopular(mediaQuery, context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHomeWidgetBanner(MediaQueryData mediaQuery, BuildContext context,) {
    return SizedBox(
      width: mediaQuery.size.width,
      height: 350.0,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0,0,0,0),
        child: Container(
          decoration: BoxDecoration(
            //borderRadius: BorderRadius.circular(16.0),
            image: DecorationImage(
              image: AssetImage('assets/images/imgs/g7.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: <Widget>[
              Opacity(
                opacity: 0.3,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  bottom: 16.0,
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Archeology Department of Konkan',
                    style:TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                    maxLines: 2,
                  ),
                ),
              ),
//              Padding(
//                padding: const EdgeInsets.only(
//                  left: 16.0,
//                  right: 6.0,
//                  bottom: 16.0,
//                ),
//                child: Align(
//                  alignment: Alignment.topLeft,
//                  child: Tooltip(
//                    child: IconButton(
//                      icon: Icon(Icons.menu,color: Colors.white,size: 30.0,),
//                      onPressed: () {},
//                    ),
//                    message: 'Menu',
//                  ),
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.only(
//                  left: 16.0,
//                  right: 6.0,
//                  bottom: 16.0,
//                  top: 4.0,
//                ),
//                child: Align(
//                    alignment: Alignment.topRight,
//                    child: Tooltip(
//                      child: IconButton(
//                        icon: Icon(Icons.info_outline,color: Colors.white,size: 30.0,),
//                        onPressed: () {
//                          Navigator.of(context).push(
//                            MaterialPageRoute(builder: (BuildContext context) {
//                              return DetailScreen1(BannerMovie(
//                                title: 'Few words about our Archeology department and Museum',
//                                backdropPath: 'assets/images/imgs/g7.jpg',
//                                description : 'Archaeology department of Ratnagiri '
//                                    'has been established under the Companies Act,'
//                                    ' 1956, (fully owned by Govt. of Maharashtra) '
//                                    'for systematic development of tourism and encouragement '
//                                    'of Archaeology and museum on for their preservation and '
//                                    'future research.\n\nThe Corporation receives from the State Government '
//                                    'financial assistance in the form of grants. The State Government has entrusted '
//                                    'all commercial and promotional tourism activities.'
//                                    ' Archaeology department of Ratnagiri has, since its inception, been '
//                                    'involved in the development and maintenance of the various tourist locations of'
//                                    ' Maharashtra. Also we support excavation activities at various locations.',
//                                place: '',
//                              ));
//                            }),
//                          );
//                          },
//                      ),
//                      message: 'More Info',
//                    ),
//                  ),
//                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWidgetBanner(MediaQueryData mediaQuery) {
    var listBanner = [
      SelectCard(
        title: 'Lokmanya Tilak Birth Anniversery',
        backdropPath: 'assets/images/imgs/upcoming/bal.jpg',
        description : 'Bal Gangadhar Tilak, born as Keshav Gangadhar Tilak, was an Indian nationalist, teacher, and an independence activist. He was one third of the Lal Bal Pal triumvirate. Tilak was the first leader of the Indian Independence Movement. The British colonial authorities called him "The father of the Indian unrest.',
        place: '23rd July at Tilak Birth Home,Ratnagiri',
      ),
      SelectCard(
        title: 'World Heritage Day',
        backdropPath: 'assets/images/imgs/upcoming/HeritageDay.jpg',
        description : "World Heritage Day is celebrated every year on 18 April to raise the awareness about the preserving human heritage, diversity and vulnerability of the world's built monuments and heritage sites. Also, the efforts required to protect and conserve it and to draw attention towards it.",
        place: '18th April at Thiba Palace,Ratnagiri',

      ),

      SelectCard(
        title: 'Event on the rock solid carbon',
        backdropPath:'assets/images/imgs/upcoming/independenceday.jpg',
        description : "Independence Day is annually celebrated on 15 August, as a national holiday in India commemorating the nation's independence from the United Kingdom on 15 August 1947, the day when the UK Parliament passed the Indian Independence Act 1947 transferring legislative sovereignty to the Indian Constituent Assembly.",
        place: '15th August at Thiba Palace and Tilak Birth Home',
      ),
      SelectCard(
        title: 'Kalajatra 2021(Art Circle, Ratnagiri)',
        backdropPath:'assets/images/imgs/upcoming/kalajtra.jpg',
        description : "January 2021 at Thiba Palace",
        place: 'Festival of music,art and culture',
      ),
    ];
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0,left: 16.0),
                child: Row(
                  children: <Widget>[
                    Text('Upcoming Events and Exhibitions',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: mediaQuery.size.width,
                height: 200.0,
                child: PageView.builder(
                  controller: PageController(viewportFraction: 0.90, initialPage: 200),
                  itemBuilder: (BuildContext context, int index) {
                    var bannerMovie = listBanner[index % 4];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return DetailScreen1(bannerMovie);
                            }),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            image: DecorationImage(
                              image: AssetImage(bannerMovie.backdropPath),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Opacity(
                                opacity: 0.3,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.0),
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 16.0,
                                  right: 16.0,
                                  bottom: 16.0,
                                ),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    bannerMovie.title,
                                    style: Theme.of(context).textTheme.title.merge(
                                      TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    maxLines: 2,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: 400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }



  Widget _buildCategories(MediaQueryData mediaQuery,BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
        right: 8.0,
      ),
      child: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: GestureDetector(
                          child: new Container(
                            height: 100.0,
                            decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(5.0),
                                color: Color(0xFFFD7384)),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Icon(
                                  Icons.photo_library,
                                  color: Colors.white,
                                ),
                                new Text("Gallery",
                                    style: new TextStyle(color: Colors.white))
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Gallery()),
                            );
                          }
                      ),
                    )),
                new Expanded(
                    child: new Container(
                      height: 100.0,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding:
                              const EdgeInsets.only(bottom: 2.5, right: 2.5),
                              child: GestureDetector(
                                  child: new Container(
                                    decoration: new BoxDecoration(
                                        color: Color(0XFF2BD093),
                                        borderRadius: new BorderRadius.circular(5.0)),
                                    child: new Row(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(left: 15.0),
                                          child: Padding(
                                            padding: const EdgeInsets.only(right: 8.0),
                                            child: new Icon(
                                              Icons.event,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        new Text('Events',
                                          style: new TextStyle(color: Colors.white),
                                          maxLines: 2,
                                        )
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Events()),
                                    );
                                  }
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                              const EdgeInsets.only(top: 2.5, right: 2.5),
                              child: GestureDetector(
                                child: new Container(
                                  decoration: new BoxDecoration(
                                      color: Color(0XFFFC7B4D),
                                      borderRadius: new BorderRadius.circular(5.0)),
                                  child: new Row(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(left: 15.0),
                                        child: Padding(
                                          padding: const EdgeInsets.only(right: 8.0),
                                          child: new Icon(
                                            Icons.developer_board,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      new Text('Forts',
                                          style: new TextStyle(color: Colors.white))
                                    ],
                                  ),
                                ),
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Forts()),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                new Expanded(
                    child: new Container(
                      height: 100.0,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding:
                              const EdgeInsets.only(left: 2.5, bottom: 2.5),
                              child: GestureDetector(
                                child: new Container(
                                  decoration: new BoxDecoration(
                                      color: Color(0XFF53CEDB),
                                      borderRadius: new BorderRadius.circular(5.0)),
                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(right: 8.0),
                                        child: new Icon(
                                          Icons.account_balance,
                                          color: Colors.white,
                                        ),
                                      ),
                                      new Text('Exhibitions',
                                          style: new TextStyle(color: Colors.white))
                                    ],
                                  ),
                                ),
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Exhibitions()),
                                  );
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 2.5, top: 2.5),
                              child: GestureDetector(
                                child: new Container(
                                  decoration: new BoxDecoration(
                                      color: Color(0XFFF1B069),
                                      borderRadius: new BorderRadius.circular(5.0)),
                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(right: 8.0),
                                        child: new Icon(
                                          Icons.account_box,
                                          color: Colors.white,
                                        ),
                                      ),
                                      new Text('About us',
                                          style: new TextStyle(color: Colors.white))
                                    ],
                                  ),
                                ),
                                onTap: (){
                                  Navigator.of(context).push(
                                    MaterialPageRoute(builder: (BuildContext context) {
                                      return DetailScreen1(SelectCard(
                                        title: 'Few words about our Archeology department and Museum',
                                        backdropPath: 'assets/images/imgs/g7.jpg',
                                        description : 'Archaeology department of Ratnagiri '
                                            'has been established under the Companies Act,'
                                            ' 1956, (fully owned by Govt. of Maharashtra) '
                                            'for systematic development of tourism and encouragement '
                                            'of Archaeology and museum on for their preservation and '
                                            'future research.\n\nThe Corporation receives from the State Government '
                                            'financial assistance in the form of grants. The State Government has entrusted '
                                            'all commercial and promotional tourism activities.'
                                            ' Archaeology department of Ratnagiri has, since its inception, been '
                                            'involved in the development and maintenance of the various tourist locations of'
                                            ' Maharashtra. Also we support excavation activities at various locations.',
                                        place: '',
                                      ));
                                    }),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top:5.0),
              child: Row(
                children: <Widget>[
                  new Expanded(
                      child: GestureDetector(
                        child: new Container(
                          height: 48.0,
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(right: 5.0,bottom: 2.5),
                                  child: new Container(
                                    decoration: new BoxDecoration(
                                        color: Colors.orangeAccent,
                                        borderRadius: new BorderRadius.circular(5.0)),
                                    child: new Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right: 8.0),
                                          child: new Icon(
                                            Icons.multiline_chart,
                                            color: Colors.white,
                                          ),
                                        ),
                                        new Text('Museums',
                                          style: new TextStyle(color: Colors.white),
                                          maxLines: 2,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Museums()),
                          );
                        },
                      )),
                  new Expanded(
                      child: GestureDetector(
                        child: new Container(
                          height: 48.0,
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(bottom: 2.5, right: 2.5),
                                  child: new Container(
                                    decoration: new BoxDecoration(
                                        color: Colors.purpleAccent,
                                        borderRadius: new BorderRadius.circular(5.0)),
                                    child: new Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(right: 8.0),
                                            child: new Icon(
                                              Icons.event,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        new Text('Memorials',
                                          style: new TextStyle(color: Colors.white),
                                          maxLines: 2,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Memorials()),
                          );
                        },
                      )),
                  new Expanded(
                      child: GestureDetector(
                        child: new Container(
                          height: 48.0,
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(left: 2.5, bottom: 2.5),
                                  child: new Container(
                                    decoration: new BoxDecoration(
                                        color: Colors.deepPurple,
                                        borderRadius: new BorderRadius.circular(5.0)),
                                    child: new Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(right: 8.0),
                                          child: new Icon(
                                            Icons.contact_mail,
                                            color: Colors.white,
                                          ),
                                        ),
                                        new Text('Contact us',
                                            style: new TextStyle(color: Colors.white))
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Contact()),
                          );
                        },
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHours(MediaQueryData mediaQuery, BuildContext context) {
    return Container(
      width: 200,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.pink,
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              //padding: const EdgeInsets.only(bottom:18.0,top:8.0),
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: new ListTile(
                leading: Icon(Icons.alarm_on, size: 80,color: Colors.white,),
                title: Text('Opening Hours', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0)),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
                        child: Row(
                          children: <Widget>[
                            Text("Monday - Friday :",maxLines: 2, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 12.0)),
                            Text("10.00AM to 05.00PM",maxLines: 2, style: TextStyle(color: Colors.white,fontSize: 12.0),textAlign: TextAlign.center,),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          children: <Widget>[
                            Text("Saturday :", maxLines: 2,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 12.0)),
                            Text("12.00 PM to 03.00 PM",maxLines: 2, style: TextStyle(color: Colors.white,fontSize: 12.0),textAlign: TextAlign.center,),
                          ],
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Text("Sunday Closed", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.0)),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );

  }

  Widget _buildSocial(MediaQueryData mediaQuery, BuildContext context) {

    final String _fblink='https://www.facebook.com/Archaeology-department-of-Ratnagiri-106283047691350/?modal=admin_todo_tour';
    final String _instalink='https://www.instagram.com/archaeology_ratnagiri/';
    Future _launchUrl(url) async {
      if (await canLaunch(url)) {
        return await launch(url);
      }
      return Future.value(false);
    }
    return Row(
      children: <Widget>[
        new Expanded(
            child: new Container(
              height: 50.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 2.5, top: 2.5),
                      child: new Container(
                        decoration: new BoxDecoration(
                            color: Colors.white,
                            borderRadius: new BorderRadius.circular(5.0)),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text('Follow us on  ',
                                style: new TextStyle(color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold)
                            ),
                            GestureDetector(
                              onTap: (){
                                _launchUrl(_fblink);
                              },
                              child: Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: new SvgPicture.asset('assets/images/imgs/facebook.svg',height: 30.0,)
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                _launchUrl(_instalink);
                              },
                              child: Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: new SvgPicture.asset('assets/images/imgs/instagram.svg',height: 30.0,)
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ],
    );

  }
}
