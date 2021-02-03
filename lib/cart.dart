import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zq365/contants.dart';
import 'package:zq365/home_page.dart';
import 'package:zq365/explore.dart';
import 'package:zq365/login_page.dart';

class Cart extends StatefulWidget {
  static String id = 'Cart';
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pushNamed(context, HomePage.id);
              }),
          title: Text(
            'Cart',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                  size: 35,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, HomePage.id);
                })
          ],
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Container(child: Center(child: Image.asset('images/cart.png'))),
              Text(
                'Your cart is Empty',
                style: TextStyle(fontSize: 20),
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
                          Navigator.pushReplacementNamed(context, HomePage.id);
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
                          color: Colors.black,
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
                          color: Colors.orangeAccent,
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
      ),
    );
  }
}
