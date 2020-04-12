import 'package:flutter/material.dart';
import 'package:shopappui/pages/page1.dart';
import 'package:shopappui/pages/page2.dart';

class Homescreen extends StatefulWidget {
  Homescreen({Key key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with TickerProviderStateMixin {
  double padding = 24.0;
  String title = "Foodie";
  String subTitle = "The Best fast food Shop in City";
  Color _color = Color.fromRGBO(215, 194, 113, 1);

  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            Positioned(
              top: padding,
              right: 0,
              left: 0,
              bottom: 0,
              child: Column(
                children: <Widget>[
                  //appbar
                  SafeArea(
                    top: true,
                    left: true,
                    right: true,
                    child: Container(
                      height: 80,
                      margin: EdgeInsets.symmetric(horizontal: padding),
                      child: Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                title,
                                style: TextStyle(
                                    fontSize: 32.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300),
                              ),
                              Text(
                                subTitle,
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.search, size: 28.0, color: Colors.black)
                        ],
                      ),
                    ),
                  ),
                  //tab bar
                  Container(
                    height: 40,
                    margin: EdgeInsets.only(top: 10, left: 24, bottom: 10),
                    child: TabBar(
                        //tab bar design
                        controller: _tabController,
                        isScrollable: true,
                        unselectedLabelColor: Colors.black,
                        unselectedLabelStyle: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14.0),
                        labelColor: Colors.white,
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14.0),
                        indicator: ShapeDecoration(
                            shape: StadiumBorder(), color: _color),
                        indicatorPadding:
                            EdgeInsets.symmetric(horizontal: padding),
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelPadding: EdgeInsets.symmetric(horizontal: padding),
                        tabs: <Widget>[
                          Tab(text: "Burger"),
                          Tab(text: "Pizza"),
                          Tab(text: "Meal"),
                          Tab(text: "Ice cream"),
                          Tab(text: "Ice cream"),
                        ]),
                  ),

                  //tab bar view start
                  Flexible(
                  
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: TabBarView(
                        controller: _tabController,
                        children: <Widget>[
                          //1st page
                          Custompage(),

                          //2nd page
                          Pizzapage(),
                          //3rd page
                          Placeholder(),
                          //4th page
                          Placeholder(),
                          //5th page
                          Placeholder(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            //bottom bar
            Positioned(
              right: 0,
              left: 0,
              bottom: 0,
              child: Container(
                height: 64,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.white.withOpacity(0.5), Colors.white],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: _color,
          child: Icon(Icons.add_shopping_cart, size: 32.0, color: Colors.white),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }
}
