import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mutram/Station.dart';
import 'package:mutram/map.dart';
import 'package:mutram/selected_map_screen.dart';
import 'package:mutram/selected_place_screen.dart';
import 'package:mutram/selected_location_screen.dart';
import 'Route.dart';
import 'Station.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
    );
  }
}



class _HomeScreenState extends State<HomeScreen> {
  //Page Controller
  final _pageController = PageController(viewportFraction: 0.877);

  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
          child: Container(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[

                //=====bar=====
                Container(
                  height: 57.6,
                  margin: EdgeInsets.only(top: 28.8, left: 28.8, right: 28.8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      // custom Navigation list and Search Button
                      Container(
                        height: 57.6,
                        width: 57.6,
                        padding: EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          color: Color(0x080a09d28),
                        ),
                        child: Image(
                          image: AssetImage('assets/images/list.png')
                        ),
                      ),
                      Container(
                        height: 57.6,
                        width: 57.6,
                        padding: EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          color: Color(0x080a09d28),
                        ),
                        child: Image(
                          image: AssetImage('assets/images/search.png'),),
                      ),
                    ],
                  ),
                ),

                //=====MU TRAM=====
                // Text Widget for Title
                Padding(
                  padding: EdgeInsets.only(top: 33, left: 28.8),
                  child: Text(
                    'MU\nTRAM',
                    style: TextStyle(
                        fontSize: 43,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ),

                //=====TRAM BAR=====
                Container(
                  height: 30,
                  margin: EdgeInsets.only(left: 14.4, top: 20.8),
                  child: DefaultTabController(
                    length: 3,
                    child: TabBar(
                        labelPadding: EdgeInsets.only(left: 18.4, right: 18.4),
                        indicatorPadding:
                        EdgeInsets.only(left: 18.4, right: 18.4),
                        isScrollable: true,
                        labelColor: Color(0xFF000000),
                        unselectedLabelColor: Color(0xFF8a8a8a),
                        labelStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                        unselectedLabelStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                        indicatorColor: Color(0xFF000000),
                        tabs: [
                          Tab(
                            child: Container(
                              child: Text('Tram Route'),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: Text('Tram Timing'),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: Text('Tram Location'),
                            ),
                          ),
                        ]),
                  ),
                ),

                //=====TRAM COLOR LINE=====
                // ListView widget with PageView
                // Recommendations Section
                Container(
                  height: 218.4,
                  margin: EdgeInsets.only(top: 16),
                  child: PageView(
                    physics: BouncingScrollPhysics(),
                    controller: _pageController,
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      route.length,
                          (int index) => GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SelectedPlaceScreen(
                                  routeModel: route[index])));
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 28.8),
                          width: 333.6,
                          height: 218.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.6),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: CachedNetworkImageProvider(route[index].image),
                            ),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 12.2,
                                right: 12.2,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4.8),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaY: 19.2, sigmaX: 19.2),
                                    child: Container(
                                      height: 36,
                                      padding: EdgeInsets.only(
                                          left: 16.72, right: 14.4),
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                              Icons.location_on),
                                          SizedBox(
                                            width: 9.52,
                                          ),
                                          Text(
                                            route[index].name,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black,
                                                fontSize: 16.8),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                //=====HEAD POPULAR STATION=====
                Padding
                  (padding: EdgeInsets.only(top: 31, left: 28.8, right: 28.8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Popular Station',
                        style: TextStyle(
                            fontSize: 26,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '@SALAYA',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black54,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),

                //=====POPULAR STATION=====
                Container(
                  height: 218.4,
                  margin: EdgeInsets.only(top: 16),
                  child: PageView(
                    physics: BouncingScrollPhysics(),
                    controller: _pageController,
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      station.length,
                          (int index) => GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SelectedLocationScreen(
                                  stationModel: station[index])));
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 28.8),
                          width: 333.6,
                          height: 218.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.6),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: CachedNetworkImageProvider(station[index].image),
                            ),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                bottom: 15,
                                left: 15,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4.8),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaY: 22.2, sigmaX: 22.2),
                                    child: Container(
                                      height: 36,
                                      padding: EdgeInsets.only(
                                          left: 16.72, right: 14.4),
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                              Icons.location_on),
                                          SizedBox(
                                            width: 9.52,
                                          ),
                                          Text(
                                            station[index].name,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                                fontSize: 16.8),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                //=====HEAD MAP=====
                Padding
                  (padding: EdgeInsets.only(top: 31, left: 28.8, right: 28.8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'MAP',
                        style: TextStyle(
                            fontSize: 26,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '@CURRENTTRAM',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black54,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),

                //=====MAP=====
                Container(
                  height: 218.4,
                  margin: EdgeInsets.only(top: 16),
                  child: PageView(
                    physics: BouncingScrollPhysics(),
                    controller: _pageController,
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      map.length,
                          (int index) => GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SelectedMapScreen(
                                // mapModel: map[index]
                              )));
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 28.8),
                          width: 333.6,
                          height: 218.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.6),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: CachedNetworkImageProvider(map[index].image),
                            ),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 12.2,
                                right: 12.2,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4.8),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaY: 19.2, sigmaX: 19.2),
                                    child: Container(
                                      height: 36,
                                      padding: EdgeInsets.only(
                                          left: 16.72, right: 14.4),
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                              Icons.location_on),
                                          SizedBox(
                                            width: 9.52,
                                          ),
                                          Text(
                                            map[index].name,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black,
                                                fontSize: 16.8),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),


              ],
            ),
          )
      ),
    );


  }

}