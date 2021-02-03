import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

const pressedcustomBorder = Border(
    top: BorderSide(color: Color(0xffF5F5F5), width: 1.5),
    right: BorderSide(color: Color(0xffF5F5F5), width: 1.5),
    left: BorderSide(color: Color(0xffF5F5F5), width: 1.5),
    bottom: BorderSide(color: Colors.orange, width: 3));

const unPressedCustomBorder =
    Border(bottom: BorderSide(color: Color(0xffE0E0E0), width: 3));

const pressedContainerColor = Colors.white;
const unPressedContainerColor = Color(0xffF5F5F5);

const List pressedIconlist = <Widget>[
  SizedBox(
    width: 2,
  ),
  Icon(
    Icons.check_circle_outline,
    color: Colors.orangeAccent,
    size: 15,
  )
];

const List unPressedIconlist = <Widget>[];

class customColumn extends StatelessWidget {
  final IconData icon;
  final String name;
  final Color color;
  final bool show;

  customColumn({this.icon, this.name, this.color, this.show});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Badge(
          showBadge: show,
          badgeContent: Text('0'),
          badgeColor: Colors.orangeAccent,
          child: Icon(
            icon,
          ),
        ),
        Text(
          name,
          style: TextStyle(color: color),
        )
      ],
    );
  }
}
