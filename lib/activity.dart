import 'package:flutter/material.dart';
//import 'package:insta_clone/bottomnav.dart';
import 'package:insta_clone/grid.dart';
import 'package:insta_clone/profile.dart';
import 'package:insta_clone/insta.dart';
import 'package:insta_clone/reels.dart';

class Follow {
  final String id;
  final String date;
  final String pic;
  final String text;
  final String time;
  final String post;
  Follow(
      {required this.id,
      required this.date,
      required this.pic,
      required this.text,
      required this.time,
      required this.post});
}

final List<Follow> follows = [
  Follow(
      id: '1',
      date: 'New',
      pic:
          'https://i.pinimg.com/736x/37/16/6e/37166e812fc827a7fcb9be24b3f51dc8.jpg',
      text: 'karenne liked your post',
      time: '1h',
      post:
          'https://i.pinimg.com/736x/d1/94/17/d194177bb903882273ad1ec988e52623.jpg'),
  Follow(
      id: '2',
      date: 'Today',
      pic:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSg9a-NaLg8lu3CE8M7OrG1Af_AOgy1s3Wlg&usqp=CAU',
      text: 'kiero_d, zackjon and 26 others liked your post',
      time: '3h',
      post:
          'https://i.pinimg.com/736x/d1/94/17/d194177bb903882273ad1ec988e52623.jpg'),
  Follow(
      id: '3',
      date: 'This Week',
      pic:
          'https://i.pinimg.com/736x/37/16/6e/37166e812fc827a7fcb9be24b3f51dc8.jpg',
      text: 'craige_m mentoined you in a comment: @candy_xoxo Exactly it is!!!',
      time: '2d',
      post:
          'https://i1.wp.com/i.pinimg.com/originals/64/1a/71/641a71a31235697e1e953af9b68f65a5.jpg'),
  Follow(
      id: '4',
      date: 'This month',
      pic:
          'https://images.unsplash.com/photo-1582610285985-a42d9193f2fd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fHdvbWFufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80',
      text: 'matrini_rond started following you',
      time: '5d',
      post:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgP0AWDumtouxndQsBQHpGVNvG7jxiYOg0gkCnATfcha-XFkJUrWt5WphT3R4Qli4OJuTFfIT-dg&usqp=CAU'),
];

class Activity extends StatelessWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                'Activity',
                style: TextStyle(color: Colors.black),
              ),
            ),
            bottom: TabBar(
                //isScrollable: true,
                indicatorColor: Colors.black,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                      child: Text(
                    "Following",
                    style: TextStyle(fontSize: 25),
                  )),
                  Tab(
                      child: Text(
                    "You",
                    style: TextStyle(fontSize: 25),
                  ))
                ]),
            backgroundColor: Colors.white,
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text('following page'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, top: 15, bottom: 15),
                    child: Text(
                      'Follow Requests',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Divider(
                    height: 5,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: follows.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15, bottom: 15, top: 15),
                            child: Text(
                              follows[index].date,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(follows[index].pic),
                              radius: 25,
                            ),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(child: Text(follows[index].text)),
                                Text(follows[index].time)
                              ],
                            ),
                            trailing: Container(
                              child: Image.network(follows[index].post),
                            ),
                          ),
                          Divider(
                            height: 5,
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
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
          )),
    ));
  }
}
