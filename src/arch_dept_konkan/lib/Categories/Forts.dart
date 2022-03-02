import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:archdeptkonkan/model/ChoiceCard.dart';

class Forts extends StatelessWidget {

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
            child: Text('Forts',
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

      const Choice(title: 'Bankot fort',
          place: 'Ratnagiri',
          description: 'Bankot Fort is also known as Himmatgad Fort or Fort Victoria.It is a fort located 47 km from Dapoli, in Ratnagiri district, of Maharashtra. This fort is an important fort in Ratnagiri district. The Fort is located on a prominent and commanding point for guarding the trade route along the Savitri River, which runs till, Mahad which was a busy route in medieval times. It is a fort located on a hill near the sea.'
              '\n\n Location: Dapoli'
              '\n\n Type: Sea fort'
              '\n\n Height: 91m',
          imglink: 'assets/images/imgs/gallery/bankot.JPG'),

      const Choice(title: 'Bharatgad fort',
          place: 'Malvan',
          description: 'Bharatgad Fort is a fort located 18km from Malvan, in Sindhudurg district, of Maharashtra. This fort is located on the southern bank of Gad river or Kalaval creek. The fort is spread over an area of 4-5 acres and covered with mango orchard.The nearest town is Malvan which is 526 km from Mumbai. The base village of the fort is Masure. The Bharatgad and Bhadwantgad forts can be visited in a single day.'
              '\n\n Location: Malvan,Sindhudurg'
              '\n\n Type: Hill fort'
              '\n\n Height: 69 m'
              '\n\n Visiting Hours: 8 am to 6 pm',
          imglink: 'assets/images/imgs/gallery/bharatgad.JPG'),

      const Choice(title: 'Dutch warehouse',
          place: 'Vengurla',
          description: 'During the period of colonization in India by foreign western traders, the Dutch Factory at Vengurle was erected in 1665 by Dutch East India Company’s envoy Rickloff Van Goens. The length of the factory Building is 35 Meters and breadth is 17 Meters. At present the factory building in charges of Archaeological Department.'
              '\n\n Location: Sawantwadi '
              '\n\n Type:Land fort '
              '\n\n Height: 0ft '
              '\n\n Visiting Hours: 24 hours(Except Rainy season)',
          imglink: 'assets/images/imgs/gallery/dutch.jpg'),


      const Choice(title: 'Ghodbandar fort',
          place: 'Thane',
          description: "Ghodbunder Fort is a fort located in Ghodbunder Village, Thane, Maharashtra, India, on the hill just south of the Ulhas River. It was built by the Portuguese, occupied by the Maratha Empire, and became the East India Company's district headquarters."
              '\n\n Location: Malvan'
              '\n\n Type: Hill fort'
              '\n\n Height: 69 m'
              '\n\n Visiting Hours: 8 am to 6 pm',
          imglink: 'assets/images/imgs/gallery/ghodbandar.jpg'),


      const Choice(title: 'Goa fort',
          place: 'Dapoli',
          description: 'Goa fort is a fort located 15 km from Dapoli, in Ratnagiri district, of Maharashtra. This fort is one of the three forts built to guard the Suvarnadurg fort, the other two forts are Kanakdurg and Fatte durg. The fort is a main tourist attraction in the Harne village.There are two entrance gate in the fort. One facing the landward side and the other facing the sea.'
              '\n\n Location: Harne,Dapoli'
              '\n\n Type: Sea fort'
              '\n\n Height: 300ft'
              '\n\n Visiting Hours: 5 am to 6 pm',
          imglink: 'assets/images/imgs/gallery/goa.jpg'),


      const Choice(title: 'Gopalgad fort',
          place: 'Guhagar',
          description: 'Gopalgad is a fort located 51 km from Chiplun, in Ratnagiri district, of Maharashtra. This fort is an important fort in Ratnagiri district. The Fort is located on a prominent and commanding point for guarding the trade route along the Vashishti River, which runs till,Gavilgad near Chiplun and the Dabhol port which was a busy route in medieval times.'
              '\n\n Location: Guhagar '
              '\n\n Type: Sea fort  '
              '\n\n Height: 300ft '
              '\n\n Visiting Hours: 5 am to 6',
          imglink: 'assets/images/imgs/gallery/gopalgad.JPG'),


      const Choice(title: 'Mahipatgad fort',
          place: 'Sangmeshwar',
          description: 'Mahipatgad is a hill fort situated on the east of the Khed. It is one of the largest forts in Maharashtra, with an area of 120 acres. This fort is located 19 km from the Khed City. The Mahipatgad. Suamargad and Rasalgad are situated on a same spur 8 km long, which runs parallel to the western ghats.'
              '\n\n Location: Khed '
              '\n\n Type: Hill fort '
              '\n\n Height: 3090ft '
              '\n\n Visiting Hours: 5 am to 6 pm',
          imglink: 'assets/images/imgs/gallery/mahipatgad.jpg'),


      const Choice(title: 'Mangad fort',
          place: 'Mangaon',
          description: 'Fort Mangad is a survey fort which is situated in Borwadi, an area near Mashidwadi. The fort is made sacred by the footsteps of the founder of Hindavi Swaraj, the famous Maratha king Chhatrapati Shivaji Maharaja. Mangaon is situated about 150 km from Mumbai.To the south of this fort there is Jore valley. To the east there is Konkan Diva Fort.'
              '\n\n Location: Mangaon, Raigad '
              '\n\n Type: Hill fort '
              '\n\n Height: 750ft '
              '\n\n Visiting Hours: 24 hours',
          imglink: 'assets/images/imgs/gallery/mangad.JPG'),

      const Choice(title: 'Purnagad',
          place: 'Ratnagiri',
          description: 'Purngad is a fort located 25km from Ratnagiri, in Ratnagiri district, of Maharashtra. This fort is a very small, not so important fort in Ratnagiri district. The Fort is spread over 22acres and located on a northern hill on Muchkundi River.The fort is built using the Black basalt rock.On the entrance gate, Sun-Moon and Ganapati are carved in the stone.'
              '\n\n Location: Ratnagiri'
              '\n\n Type: Sea fort'
              '\n\n Height: 300ft'
              '\n\n Visiting Hours: 5 am to 6 pm',
          imglink: 'assets/images/imgs/gallery/purnagad1.jpg'),

      const Choice(title: 'Rasalgad',
          place: 'Khed',
          description: 'Rasalgad is a fort in the Maharashtra state of India. It lies 15 km east of Khed City. The fort has been developed as tourist attraction.The fort lied on a south end of a narrow spur which joins with Suamargad and Mahipatgad in the north direction.This fort was in the captivity of Morè (clan) of Javli from whom Shivaji Maharaj captured this fort. In 1818 British forces captured it from the Peshwas'
              '\n\n Location: Khed'
              '\n\n Type: Hill fort'
              '\n\n Height: 1770ft',
          imglink: 'assets/images/imgs/gallery/rasalgad.JPG'),

      const Choice(title: 'Ratndurg Fort',
          place: 'Khed',
          description: 'Ratnadurg Fort, also called as Bhagawati Fort.It is located 2 km from Ratnagiri,in Ratnagiri district, of Maharashtra. This fort is an important fort in Ratnagiri district. The fort is a main tourist attraction due to the Bhagawati Temple inside the fort. This fort was built during the Bahamani period. In 1670 Shivaji Maharaj won the fort from the hands of Adil Shah of Bijapur.The nearest town is Ratnagiri.'
              '\n\n Location: Ratnagiri'
              '\n\n Type: Sea  fort'
              '\n\n Height: 200ft',
          imglink: 'assets/images/imgs/monuments/ratndurg.jpg'),

      const Choice(title: 'Shirgaon fort',
          place: 'Palghar',
          description: 'Shirgaon Fort / Shirgao Fort is a fort located 6.5km from Palghar, in Palghar district, of Maharashtra. This fort is in very good condition. The outer walls, steps, parapets, bastions etc. in solid masonry are in excellent order and worth seeing. The fort is located in the Shirgaon village.'
              '\n\n Location: Shirgaon'
              '\n\n Type: Land fort'
              '\n\n Height: 69 m'
              '\n\n Visiting Hours: 8 am to 8 pm',
          imglink: 'assets/images/imgs/gallery/shirgav.jfif'),

      const Choice(title: 'Underi fort',
          place: 'Alibaug',
          description: "Underi (Jaidurg) is a fortified island near the mouth of Mumbai harbour south of Prong's Lighthouse. It is a companion fort to Khanderi. These islands of Khanderi and Underi served as one of the landmarks for ships entering Mumbai harbour. Underi is smaller than Khanderi.In the year 1680 CE the fort of was built by Kihim of Siddis. The Marathas had attacked the fort but they failed to capture."
              "\n\n Location: Alibag,Raigad "
              "\n\n Type: Sea fort"
              "\n\n Height: 300ft"
              "\n\n Visiting Hours: 24 hours",

          imglink: 'assets/images/imgs/gallery/underi.jpg'),

      const Choice(title: 'Yashwantgad fort',
          place: 'Vengurla',
          description: 'Yashwantgad Fort is located in Redi, Maharashtra, near the Maharashtra-Goa border. It is located on a small hill North of Jaitapur creek. It is a tree-entangled ruin that looks out over the beaches of the south Maharashtra coast.The fort is located 33 km from Sawantwadi and 26 km from Vengurla.The fort is located 33 km from Sawantwadi and 26 km from Vengurla. The fort is approached via crumbling gateways.'
              '\n\n Location: Redi, Khalchikar'
              '\n\n Type: Sea fort'
              '\n\n Height: 46 m'
              '\n\n Visiting Hours: 24 hours',
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
