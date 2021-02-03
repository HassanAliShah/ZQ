import 'package:flutter/material.dart';
import 'package:zq365/search_place.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.grey,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          actions: [
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search Your area...',
                        border:
                            OutlineInputBorder(borderSide: BorderSide.none)),
                  ),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                )
              ],
            )
          ]),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.orangeAccent,
                ),
                Text(
                  'Use Current Location',
                  style: TextStyle(fontSize: 15, color: Colors.orangeAccent),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Popular Places',
              style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchPlace()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade400,
                ),
                padding: EdgeInsets.all(12),
                child: Text('ZQ365 PESH RD'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
