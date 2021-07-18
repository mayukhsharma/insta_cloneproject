import 'package:flutter/material.dart';
import 'package:insta_clone/activity.dart';
import 'package:insta_clone/insta.dart';
import 'package:insta_clone/grid.dart';
import 'package:insta_clone/profile.dart';

class Reels extends StatelessWidget {
  const Reels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: new Container(
      color: Colors.white,
      height: 50.0,
      alignment: Alignment.center,
      child: new BottomAppBar(
        child: new Row(
          // alignment: MainAxisAlignment.spaceAround,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new IconButton(
              icon: Icon(
                Icons.home,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Insta()),
                );
              },
            ),
            new IconButton(
              icon: Icon(
                Icons.search,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Grid()),
                );
              },
            ),
            new IconButton(
              icon: Icon(
                Icons.add_box,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Reels()),
                );
              },
            ),
            new IconButton(
              icon: Icon(
                Icons.favorite,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Activity()),
                );
              },
            ),

            // GestureDetector(
            //   onTap: () {},
            // ),
            GestureDetector(
              onTap: () {
                print('hii');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://iglives.tv/wp-content/uploads/2020/02/kenzie_feb28.jpg'),
                radius: 11,
              ),
            ),

            // new IconButton(
            //   icon: Icon(
            //     Icons.account_box,
            //   ),
            //   onPressed: null,
            // ),
          ],
        ),
      ),
    ));
  }
}
