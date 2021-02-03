import 'package:zq365/cart.dart';
import 'package:flutter/material.dart';
import 'package:zq365/contants.dart';
import 'package:zq365/explore.dart';
import 'package:zq365/login_page.dart';
import 'package:badges/badges.dart';
import 'package:ribbon/ribbon.dart';
import 'package:zq365/search_place.dart';
import 'package:zq365/Search.dart';

class HomePage extends StatefulWidget {
  static String id = 'HomePage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  bool v1 = true;
  bool v2 = false;
  bool value = true;
  bool icon1 = true;
  bool icon2 = false;
  bool icon3 = false;
  bool icon4 = false;
  bool icon5 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              title: Image(
                image: AssetImage('images/zq.png'),
                width: MediaQuery.of(context).size.width * 0.3,
              ),
              actions: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Search()));
                  },
                  child: Row(
                    children: [
                      Text(
                        '304-G Eziline ST,Rawalpindi..',
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.orangeAccent,
                      )
                    ],
                  ),
                )
              ],
            ),
            body: Container(
              child: Column(
                children: [
                  Container(
                    color: Color(0xffF8F9FA),
                    height: MediaQuery.of(context).size.height * 0.17,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, Explore.id);
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            height: 50,
                            child: Card(
                              semanticContainer: true,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Search for Stores or items...',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Icon(
                                      Icons.search,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '2 RESTAURANTS NEAR YOU',
                                style: TextStyle(fontSize: 10),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _pageController.animateToPage(0,
                                          duration: Duration(milliseconds: 100),
                                          curve: Curves.linear);
                                      v1 = true;
                                      if (v1 == true) {
                                        value = true;
                                        v2 = false;
                                      } else {
                                        value = false;
                                      }
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: value
                                            ? pressedContainerColor
                                            : unPressedContainerColor,
                                        border: value
                                            ? pressedcustomBorder
                                            : unPressedCustomBorder),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Delivery',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: value
                                                  ? Colors.orangeAccent
                                                  : Colors.black,
                                            ),
                                          ),
                                          Row(
                                            children: value
                                                ? pressedIconlist
                                                : unPressedIconlist,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _pageController.animateToPage(1,
                                          duration: Duration(milliseconds: 100),
                                          curve: Curves.easeIn);
                                      v2 = true;
                                      if (v2 == true) {
                                        value = false;
                                        v1 = false;
                                      } else {
                                        value = false;
                                      }
                                    });
                                  },
                                  child: Container(
                                    // height: 25,
                                    decoration: BoxDecoration(
                                        color: value
                                            ? unPressedContainerColor
                                            : pressedContainerColor,
                                        border: value
                                            ? unPressedCustomBorder
                                            : pressedcustomBorder),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Self Pickup',
                                            style: TextStyle(
                                              color: value
                                                  ? Colors.black
                                                  : Colors.orangeAccent,
                                            ),
                                          ),
                                          Row(
                                            children: value
                                                ? unPressedIconlist
                                                : pressedIconlist,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: PageView(
                    controller: _pageController,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      //page on 0 index
                      Container(
                        child: ListView(
                          children: [
                            Ribbon(
                              title: 'Featured',
                              color: Colors.orangeAccent,
                              location: RibbonLocation.topEnd,
                              farLength: 50,
                              nearLength: 20,
                              child: Container(
                                child: Row(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image.asset(
                                        'images/zq.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    VerticalDivider(
                                      width: 5,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('ZQ 360 Pesh Rd',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        Text('Peshawar Road Branch'),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.7,
                                          child: Divider(
                                            height: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.orangeAccent,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text('5'),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.1,
                                            ),
                                            Icon(Icons.access_time_outlined),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text('45 MINS',
                                                style: TextStyle(fontSize: 10)),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.05,
                                            ),
                                            Icon(Icons.folder_open),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'RS500 FOR TWO',
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset(
                                      'images/pak.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  VerticalDivider(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'ZQ 360 COMMERICAL',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                          'PIZZA BURGERS STEAK PASTA CHINESE SA..'),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        child: Divider(
                                          height: 10,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.orangeAccent,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text('5'),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.1,
                                          ),
                                          Icon(Icons.access_time_outlined),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text('45 MINS',
                                              style: TextStyle(fontSize: 10)),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.05,
                                          ),
                                          Icon(Icons.folder_open),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'RS500 FOR TWO',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      //page on 1 index
                      Container(
                        child: ListView(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset(
                                      'images/zq.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  VerticalDivider(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('ZQ 360 Pesh Rd',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      Text('Peshawar Road Branch'),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        child: Divider(
                                          height: 10,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.orangeAccent,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text('5'),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.1,
                                          ),
                                          Icon(Icons.access_time_outlined),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text('45 MINS',
                                              style: TextStyle(fontSize: 10)),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.05,
                                          ),
                                          Icon(Icons.folder_open),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'RS500 FOR TWO',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Ribbon(
                              title: 'Featured',
                              location: RibbonLocation.topEnd,
                              nearLength: 50,
                              farLength: 20,
                              color: Colors.orangeAccent,
                              child: Container(
                                child: Row(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: Image.asset(
                                        'images/pak.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    VerticalDivider(
                                      width: 5,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'ZQ 360 COMMERICAL',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                            'PIZZA BURGERS STEAK PASTA CHINESE SA..'),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.7,
                                          child: Divider(
                                            height: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.orangeAccent,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text('5'),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.1,
                                            ),
                                            Icon(Icons.access_time_outlined),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text('45 MINS',
                                                style: TextStyle(fontSize: 10)),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.05,
                                            ),
                                            Icon(Icons.folder_open),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'RS500 FOR TWO',
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
                  //bottom bar
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Card(
                      elevation: 10,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          customColumn(
                            icon: Icons.location_on_outlined,
                            name: 'Near Me',
                            color: icon1 ? Colors.orangeAccent : Colors.black,
                            show: false,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                icon1 = false;
                                icon2 = true;
                                icon3 = false;
                                icon4 = false;
                                icon5 = false;
                              });
                              Navigator.pushNamed(context, LoginPage.id);
                            },
                            child: customColumn(
                              icon: Icons.notifications_none_rounded,
                              name: 'Alerts',
                              color: icon2 ? Colors.orangeAccent : Colors.black,
                              show: true,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                icon1 = false;
                                icon2 = false;
                                icon3 = true;
                                icon4 = false;
                                icon5 = false;
                              });
                              Navigator.pushNamed(context, Explore.id);
                            },
                            child: customColumn(
                              icon: Icons.search,
                              name: 'Explore',
                              color: icon3 ? Colors.orangeAccent : Colors.black,
                              show: false,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                icon1 = false;
                                icon2 = false;
                                icon3 = false;
                                icon4 = true;
                                icon5 = false;
                              });
                              Navigator.pushNamed(context, Cart.id);
                            },
                            child: customColumn(
                              icon: Icons.add_shopping_cart,
                              name: 'Cart',
                              color: icon4 ? Colors.orangeAccent : Colors.black,
                              show: true,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                icon1 = false;
                                icon2 = false;
                                icon3 = false;
                                icon4 = false;
                                icon5 = true;
                              });
                              Navigator.pushNamed(context, LoginPage.id);
                            },
                            child: customColumn(
                              icon: Icons.person_outline_rounded,
                              name: 'Account',
                              color: icon5 ? Colors.orangeAccent : Colors.black,
                              show: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
