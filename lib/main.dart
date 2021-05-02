import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

const d_green = Colors.greenAccent;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotels Booking',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchSection(),
            HotelSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarSection(),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.grey[800],
          size: 20,
        ),
        onPressed: null,
      ),
      centerTitle: true,
      title: Text(
        'Explore',
        style: GoogleFonts.nunito(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.w700,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.favorite_outline_rounded,
            color: Colors.grey[800],
            size: 20,
          ),
          onPressed: null,
        ),
        IconButton(
          icon: Icon(
            Icons.place,
            color: Colors.grey[800],
            size: 20,
          ),
          onPressed: null,
        ),
      ],
      backgroundColor: Colors.white,
    );
  }
}

class SearchSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15, left: 10, bottom: 15, right: 10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.white,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Londre',
                      contentPadding: EdgeInsets.all(15),
                      border: InputBorder.none,
                    ),
                    onChanged: null,
                  ),
                ),
              ),
              MaterialButton(
                color: d_green,
                shape: CircleBorder(),
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    Text(
                      'Choose date',
                      style: GoogleFonts.nunito(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      '12 Dec - 22 Dec',
                      style: GoogleFonts.nunito(
                        color: Colors.black,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'Number of Rooms',
                      style: GoogleFonts.nunito(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      '1 Room - 2 Adults',
                      style: GoogleFonts.nunito(
                        color: Colors.black,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HotelSection extends StatelessWidget {
  final List hotelList = [
    {
      'title': 'Grand Royl Hotel',
      'place': 'wembley, London',
      'distance': '2 km to city',
      'review': '80 Reviews',
      'picture': 'images/hotel1.jpg',
      'price': '180',
    },
    {
      'title': 'Queen Hotel',
      'place': 'wembley, London',
      'distance': '2 km to city',
      'review': '80 Reviews',
      'picture': 'images/hotel2.jpg',
      'price': '220',
    },
    {
      'title': 'Grand Mal Hotel',
      'place': 'wembley, London',
      'distance': '2 km to city',
      'review': '80 Reviews',
      'picture': 'images/hotel3.jpg',
      'price': '400',
    },
    {
      'title': 'Hilton',
      'place': 'wembley, London',
      'distance': '2 km to city',
      'review': '80 Reviews',
      'picture': 'images/hotel4.jpg',
      'price': '910',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '550 hotels founds',
                style: GoogleFonts.nunito(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Filters',
                    style: GoogleFonts.nunito(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.filter_list_outlined,
                      color: d_green,
                      size: 25,
                    ),
                    onPressed: null,
                  ),
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: hotelList.map((hotel) {
              return Container(
                margin: EdgeInsets.all(10.0),
                height: 270,
                width: 400,
                //color: Colors.green,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(18),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 6,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(18),
                          topRight: Radius.circular(18),
                          bottomRight: Radius.zero,
                          bottomLeft: Radius.zero),
                      child: Image(
                        height: 160,
                        width: 400,
                        fit: BoxFit.cover,
                        image: AssetImage(
                          hotel['picture'],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            hotel['title'],
                            style: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            '\$' + hotel['price'],
                            style: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            hotel['place'],
                            style: GoogleFonts.nunito(
                              fontSize: 14,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.place,
                                color: d_green,
                                size: 14.0,
                              ),
                              Text(
                                hotel['distance'],
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  color: Colors.grey[500],
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '/per night',
                            style: GoogleFonts.nunito(
                              fontSize: 14,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.rate_review_rounded,
                                color: d_green,
                                size: 14.0,
                              ),
                              Icon(
                                Icons.rate_review_rounded,
                                color: d_green,
                                size: 14.0,
                              ),
                              Icon(
                                Icons.rate_review_rounded,
                                color: d_green,
                                size: 14.0,
                              ),
                              Icon(
                                Icons.rate_review_rounded,
                                color: d_green,
                                size: 14.0,
                              ),
                              Icon(
                                Icons.rate_review_rounded,
                                color: d_green,
                                size: 14.0,
                              ),
                              SizedBox(width: 20),
                              Text(
                                hotel['review'],
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  color: Colors.grey[500],
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}

class BottomNavBarSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: d_green,
          ),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_outline_rounded,
            color: d_green,
          ),
          label: 'Tips',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search_off,
            color: d_green,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
