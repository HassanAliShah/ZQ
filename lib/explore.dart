import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zq365/cart.dart';
import 'package:zq365/contants.dart';
import 'package:zq365/home_page.dart';
import 'package:zq365/login_page.dart';

class Explore extends StatefulWidget {
  static String id = 'Explore';
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Column(
          children: [
            AppBar(
              leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, HomePage.id);
                  }),
              backgroundColor: Colors.white,
              actions: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search for Restaurants',
                          contentPadding: EdgeInsets.only(top: 8),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide.none)),
                    )),
                IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    onPressed: () {}),
              ],
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: Image.asset('images/explore.png'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Card(
                elevation: 10,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, HomePage.id);
                      },
                      child: customColumn(
                        icon: Icons.location_on_outlined,
                        name: 'Near Me',
                        color: Colors.black,
                        show: false,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, LoginPage.id);
                      },
                      child: customColumn(
                        icon: Icons.notifications_none_rounded,
                        name: 'Alerts',
                        color: Colors.black,
                        show: true,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Explore.id);
                      },
                      child: customColumn(
                        icon: Icons.search,
                        name: 'Explore',
                        color: Colors.orangeAccent,
                        show: false,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Cart.id);
                      },
                      child: customColumn(
                        icon: Icons.add_shopping_cart,
                        name: 'Cart',
                        color: Colors.black,
                        show: true,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, LoginPage.id);
                      },
                      child: customColumn(
                        icon: Icons.person_outline_rounded,
                        name: 'Account',
                        color: Colors.black,
                        show: false,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
