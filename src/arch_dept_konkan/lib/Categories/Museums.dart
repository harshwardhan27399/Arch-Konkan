import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:archdeptkonkan/model/ChoiceCard.dart';

class Museums extends StatelessWidget {

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
                  _buildWidgetScreenshots(mediaQuery, context),
                  _galleryCards(context),
                  _gallery3Cards(context),

                  SizedBox(height: 16.0),

                  _gallery2Cards(context),
                  _buildWidget2Screenshots(mediaQuery, context),
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
            child: Text('Museums',
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
      const Choice(title: 'Thiba Palace, Ratnagiri',
          place: 'Thibaw palace is now a State Protected Monument of Maharashtra',
          description: 'Thibaw,King of Burma,now called Myanmar was a unique personality.His educational achivement was marked with the Padhamarakyaw - a highest degree in Pali.Thibaw was the only king to achive this degree in the entire Myanmar history.He had a great respect and love for Buddhist religion and monks.But his love for religion was not blind.He welcomed reforms.He invited suggestions from his courtiers and citizens for reforming religion and administration.Thibaw indeed loved his subjects.Publishing Law books,creating a code of conduct for his officers and townheads are some of the examples of his welfare orientedness,he spent considerable Royal money for freeing slaves and for their rehabilitation.Such a steady progresses of Myanmar in the region of Thibaw was eclipsed by British machinations as the Britishers found Thibaw a major obstacle in their profitable trade.The warning British defeated Thibaw and captured him(28Nov 1885).'
              "\n\nApprehensive of a possible revolt from loyal followers of Thibaw,the British took him along with his family first to Madras and then to Ratnagiri.First he was provided an accmmodation in the rental banglow.But as the space was inadequate the site for palace was selected by Thibaw's choice,south of Kolhapur road,British Government sanctioned."
              "\n\nRs.1,25,000/- for the construction of the Palace.During the same period Thibaw also constructed a Buddha Temple in Ratnagiri for religious purposes.The construction work of the palace began in 1906.Thibaw took a great interest in planning and executing the construction.Thibaw visited the site almost daily to supervise the work, to which the British did not object.Thus,planning and construction of this palace took place entirely according to the Thibaw's ideas and under his own supervision.Hence,on this palace built in lateriate stone in lime morter and teakwood,an influence of Burmeese architecture is seen to large extent.Thibaw inhabited this palace in 1910.His wife Su Paya Gale and Thibaw himself took their last breath in the same palace (25 Jan 1912 & 16 Dec 1916 respectively).Their tombs are situated at Shivajinagar, Ratnagiri.",
          imglink: ''),
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

  Widget _gallery3Cards(BuildContext context) {

    List<Choice> choices = const <Choice>[
      const Choice(title: 'HIS MAJESTY KING THIBAW OF MYANMAR',
          place: '',
          description: ''
              '\n\n Dec 1859 : Born(Burmees Era 1220)'
              '\n\n 19 Sept 1878 : Crown Prince'
              '\n\n 8 Oct 1878 : Proclaimed King'
              '\n\n 18 Nov 1878 : Coronation Princess Su Phaya Lat as Aggamahesi(chief queen)'
              '\n\n Nov 1879 : French and Italian officers were employed to introduce some sort of western military training in the Royal Myanmar Army'
              '\n\n July 1880 : Nine Departments Executive System formulated'
              '\n\n Aug 1880 : Nine Department Executive System introduced'
              '\n\n June 1882 : The King invited written suggestions on improvement of political affairs from all courtiers'
              '\n\n 23 March 1883 : Charter granted to the Bombay Burma Teak/Timber Corporation(BBTC)'
              '\n\n 30 April 1883 : Mission of friendship and study sent to European countries'
              '\n\n 18 May 1883 : Thirty two Rules for Religious Purification adopted'
              '\n\n 29 May 1883 : Manual for Village and Town Headmen published'
              "\n\n 11 June 1883 : Some domestic servants were redeemed from slavery with the King's money and these ex-slaves were allowed to become monks13 July 1883: Of the total 1394 slaves redeemed, 240 became monks and 115 novices"
              "\n\n Aug 1883 : Manual for Legislators written and sanctioned"
              "\n\n 20 May 1884 : Royal Edict to stop collecting all taxes and revenues with effect from 25 May 1884"
              "\n\n 1 June 1884 : Treaty with France"
              "\n\n 15 Jan 1885 : Second Myanmar-French Treaty signed"
              "\n\n 16 Jan 1885 : Manual for the cultivators at the Royal Lands published"
              "\n\n 22 Jan 1885 : The code of criminal procedure ,manual of headmen,manual of district officers,Fifteen Rules of Conduct for All Services- four books were printed for the second time and bound in one volume"
              "\n\n 4 April 1885 : Myanmar - German Treaty signed"
              "\n\n 30 June 1885 : It was found by Myanmar authorities ,through BBTC extracted 80,000 logs,its account books showed only 30,000"
              "\n\n 12 Aug 1885 : BBTC fined Rs.23,00,00,000 for theft of 50,000 logs"
              "\n\n 6 Sept 1885 : More officers dismissed including the officer of Taungoo- Yamethin on a charge of receiving bribes from the English Company (BBTC) in the form of Rs.20,000 cash and 5 viss of gold"
              "\n\n 10 Sept 1885 : The King inspcted the Gun Factory"
              "\n\n 22 Oct 1885 : British Government sent an ultimatum to the Royal Myanmar Government"
              "\n\n 27 Oct 1885 : A reply to the ultimatum"
              "\n\n 7 Nov 1885 : King Thibaw declared war on the British and ordered the march of troops along three routes-5000 men down the main river,5000 men along the Yaungdwingyl route and 5000 men along the Taungoo route"
              "\n\n 11 Nov 1885 : British ships left the frontier and came up stream"
              "\n\n 18 Nov 1885 : Forts at Ava,Sagaing and Thabyedan had 3000,2760 and 1000 men respectively"
              "\n\n 28 Nov 1885 : Ten thousand enemy soldiers landed at the Gawwane jetty and surrounded the Palace where the King was found to be holding a naked sword called Yainnwebar"
              "\n\n 29 Nov 1885 : The King,Queen and two daughters and Queen Mother and her two daughters together with other relatives,officers and staff started their journey to Gawwane jetty"
              '\n\n 30 Nov 1885 : The ship "Thooreya" carrying the King and Queen and others left the Gawwane jetty'
              '\n\n 5 Dec 1885 : The King in Yangon(Rangoon)'
              '\n\n 10 Dec 1885 : The King left Yangon'
              '\n\n 14 Dec 1885 : The King at Madras'
              '\n\n 31 Dec 1885 : Warrent of Detention for King Thibaw issued;renewed each year untill his death in 1916'
              '\n\n 10 April 1886 : King Thibaw left Madras for Ratnagiri'
              '\n\n 16 April 1886 : King Thibaw at Ratnagiri'
              '\n\n 13 Nov 1910 : King Thibaw shifted to the Royal Residence in Ratnagiri'
              '\n\n 25 Jan 1912 : Queen Su Phaya Gale died at Ratnagiri'
              '\n\n 16 Dec 1916 : King Thibaw died at Ratnagiri'
              '\n\n 18 April 1919 : Queen Su Phaya Lat in Yangon at 23,Churchill Road,Yangon.Kept under house arrest'
              '\n\n 24 Nov 1925 : Queen Su Phaya Lat died at Yangon while under house arrest',
          imglink: ''),
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

  Widget _gallery2Cards(BuildContext context) {

    List<Choice> choices = const <Choice>[
      const Choice(title: 'Lokmanya Tilak Birthplace',
          place: '',
          description: 'Lokmanya Bal Gangadhar Tilak, who was the leader of the independence struggle is known as "Father of the Indian unrest" against the British rule. He was born in 1856 in Ratnagiri.Lokmanya Tilak lived for 10 years in a typical Konkani house which is situated in the Tilak colony in the centre of the city of Ratnagiri. The Tilak family lived on rent in Indirabai Gore’s house. At that time, LokmanyaTilak’s father worked as a teacher in Ratnagiri. Tilak’s native village was Chikhalgaon in Dapoli. Tilak’s birthplace in Ratnagiri has been preserved by the Archaeological Department of the state of Maharashtra and it has been declared as a memorial. There is a statue of Lokmanya Tilak in the outside premises. The birthday of Lokmanya Tilak is celebrated here every year. This memorial is open for tourists on all the days other than Monday. Recalling his enormous contribution to the freedom struggle, you feel inspired by seeing this memorial.',
          imglink: 'assets/images/imgs/museum/tilak2.JPG'),
      const Choice(title: 'Few About Tilak’s Political Life',
          place: '',
          description: "Tilak's concept of swaraj had different foundations like political, "
              "moral, spiritual, nationalistic and realistic. It was neither in the true"
              " extremist tradition reffected by Aurobindo and Bipin Chandrapal nor in the "
              "line of moderate approach pursued by Ranade and Gokhale. It sometimes locked"
              " consistancy. His concept of Swaraj advocated during the anti-partition "
              "agitation in Benal differed from his demand for home rule in the year 1916. "
              "This was because Tilak was not only a restless nationlist but also a "
              "political realist. But an indepth analysis of his perception and "
              "role-perfomance to achieve swaraj would drive any one to conclude "
              "that by Swaraj in his heart of hearts, he meant independence from "
              "foreign rule. His slogan 'Swaraj is my birth right' still echoes "
              "and inspires every lovers of freedom to make sacrifice inprotecting "
              'the swaraj. He still remains the sumbol of "swaraj" in india.',
      imglink: ''),
    ];
    return Container(
      child: Column(
          children: List.generate(choices.length, (index) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom:8.0),
                child: ChoiceCard(choice: choices[index], item: choices[index]),
              ),
            );
          }
          )
      ),
    );
  }

  Widget _buildWidgetScreenshots(
      MediaQueryData mediaQuery, BuildContext context) {
    var listScreenshotsMovie = [
      'assets/images/imgs/museum/thiba1.JPG',
      'assets/images/imgs/museum/thiba2.JPG',
      'assets/images/imgs/museum/thiba3.JPG',
      'assets/images/imgs/museum/thiba4.JPG',
      'assets/images/imgs/museum/thiba5.JPG',
      'assets/images/imgs/museum/thiba6.JPG',
      'assets/images/imgs/museum/thiba8.JPG',
    ];
    return Column(
      children: <Widget>[
        Container(
          width: mediaQuery.size.width,
          height: 250.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: 16.0,
                  right: index == listScreenshotsMovie.length - 1 ? 16.0 : 0.0,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    listScreenshotsMovie[index],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            itemCount: listScreenshotsMovie.length,
          ),
        ),
      ],
    );
  }

  Widget _buildWidget2Screenshots(
      MediaQueryData mediaQuery, BuildContext context) {
    var listScreenshotsMovie = [
      'assets/images/imgs/museum/tilak11.jpg',
      'assets/images/imgs/museum/tilak12.jpg',
      'assets/images/imgs/museum/tilak3.jpg',
      'assets/images/imgs/museum/tilak4.jpg',
      'assets/images/imgs/museum/tilak5.jpg',
      'assets/images/imgs/museum/tilak6.jpg',
      'assets/images/imgs/museum/tilak7.jpg',
      'assets/images/imgs/museum/tilak8.jpg',
      'assets/images/imgs/museum/tilak9.jpg',
      'assets/images/imgs/museum/tilak10.JPG',
      'assets/images/imgs/museum/tilak2.JPG',
      'assets/images/imgs/museum/tilak1.JPG',
    ];
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Text(
                  'Image Gallery',
                  style: Theme.of(context).textTheme.subhead.merge(
                    TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Icon(Icons.chevron_right),
            ],
          ),
        ),
        SizedBox(height: 8.0),
        Container(
          width: mediaQuery.size.width,
          height: 200.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: 16.0,
                  right: index == listScreenshotsMovie.length - 1 ? 16.0 : 0.0,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    listScreenshotsMovie[index],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            itemCount: listScreenshotsMovie.length,
          ),
        ),
      ],
    );
  }

}
